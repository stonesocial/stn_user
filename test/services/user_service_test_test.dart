import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:core/core.dart' hide Wallet;
import 'package:dependencies/dependencies.dart' hide test;
import 'package:stn_user/stn_user.dart';

class MockHttpClient extends Mock implements BasisHttpClient {}
class MockCacheStorage extends Mock implements ICacheStorage {}
class MockSolanaService extends Mock implements SolanaService {}
class MockIpfsClient extends Mock implements IpfsClient {}

final testUser = User(pubKey: 'pubKey', info:UserInfo(username: 'username', displayName: 'displayName', bio: 'bio', avatar: 'avatar', cover: 'cover', accountType: 'accountType'), bcInfo: BlockchainInfo.create(bcName: 'solana'), deviceInfo: DeviceInfo.create('token'), interaction: UserInteraction.create(), createdAt: DateTime.now().toIso8601String(), updatedAt: DateTime.now().toIso8601String(), wallet: Wallet.create());

void main() {
  late MockHttpClient mockHttpClient;
  late MockCacheStorage mockCacheStorage;
  late MockIpfsClient mockIpfsClient;
  late UserService userService;

  setUp(() {
    mockHttpClient = MockHttpClient();
    mockCacheStorage = MockCacheStorage();
    mockIpfsClient = MockIpfsClient();
    userService = UserService(
      mockIpfsClient,
      mockCacheStorage,
      mockHttpClient,
    );
  });

  group('UserService Tests', () {
    test('create() - success', () async {
      final mockResponse = {
        'statusCode': 200,
        'data': {
          'data': {'pubKey': 'pubKey', 'username': 'testUser'}
        }
      };

      // Mocking HTTP POST request
      when(mockHttpClient.POST('user_create_url', body: anyNamed('body')))
          .thenAnswer((_) async => Response(jsonEncode(mockResponse), 200));

      // Calling create method
      final result = await userService.create(user: testUser);

      expect(result.$1, isNull);  // No Failure
      expect(result.$2, isNotNull);  // User should be returned
      expect(result.$2!.pubKey, equals('pubKey'));  // Check user data
    });

    test('create() - failure due to server error', () async {
      final mockResponse = {
        'statusCode': 500,
        'data': {'message': 'Internal Server Error'}
      };

      // Mocking HTTP POST request to return failure
      when(mockHttpClient.POST('user_create_url', body: anyNamed('body')))
          .thenAnswer((_) async => Response(jsonEncode(mockResponse), 500));

      // Calling create method
      final result = await userService.create(user: testUser);

      expect(result.$1, isNotNull);  // Failure should be returned
      expect(result.$2, isNull);  // No user should be returned
    });

    test('getAll() - success', () async {
      const filters = QueryFilters(key: 'popular');
      final mockResponse = {
        'statusCode': 200,
        'data': {
          'statusCode': 200,
          'data': [
            {'pubKey': '1', 'username': 'user1'},
            {'pubKey': '2', 'username': 'user2'}
          ],
          'count': 2,
          'offset': 0,
          'limit': 10
        }
      };

      // Mocking HTTP GET request
      when(mockHttpClient.GET('user_get_url'))
          .thenAnswer((_) async => Response(jsonEncode(mockResponse), 200));

      // Calling getAll method
      final result = await userService.getAll(filters);

      expect(result.$1, isNull);  // No Failure
      expect(result.$2, isNotNull);  // Response should be returned
      expect(result.$2!.data.length, equals(2));  // Check for 2 users
      expect(result.$2!.data.first.info.username, equals('user1'));  // First user should be 'user1'
    });

    test('cache() - success', () async {
      // Mocking cacheStorage.setString to return true
      when(mockCacheStorage.setString(userCacheKey, json.encode(testUser.toJson())))
          .thenAnswer((_) async => true);

      // Calling cache method
      final result = await userService.cache(testUser);

      expect(result.$1, isNull);  // No failure
      expect(result.$2, isTrue);  // Cache should be successful
    });

    test('cache() - failure', () async {
      // Mocking cacheStorage.setString to return false (error scenario)
      when(mockCacheStorage.setString(userCacheKey, json.encode(testUser.toJson())))
          .thenAnswer((_) async => false);

      // Calling cache method
      final result = await userService.cache(testUser);

      expect(result.$1, isNotNull);  // Failure should occur
      expect(result.$2, isFalse);  // Cache should fail
    });

    test('getCached() - success', () async {
      final userJson = jsonEncode({'pubKey': 'pubKey', 'username': 'testUser'});

      // Mocking cacheStorage.getString to return cached data
      when(mockCacheStorage.getString(userCacheKey))
          .thenReturn(userJson);

      // Calling getCached method
      final result = userService.getCached();

      expect(result.$1, isNull);  // No failure
      expect(result.$2, isNotNull);  // User should be returned from cache
      expect(result.$2!.pubKey, equals('pubKey'));  // Check user data
    });

    test('getCached() - failure', () async {
      // Mocking cacheStorage.getString to return null (cache miss)
      when(mockCacheStorage.getString(userCacheKey))
          .thenReturn(null);

      // Calling getCached method
      final result = userService.getCached();

      expect(result.$1, isNotNull);  // Failure should occur
      expect(result.$2, isNull);  // No user should be returned
    });
  });
}