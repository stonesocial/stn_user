import 'dart:convert';

import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

import '../stn_user.dart';

const userCacheKey = 'user_cached_key';
const channelsCacheKey = 'channels_cache_key';
const usersCacheKey = 'users_cache_key';

const blockchainIsNotSupportedYet = 'Blockchain not supported yet';
const errorCachingUser = 'Error caching user';
const noUserFoundOnCache = 'No user found on cache';

// ServerFailure _unsupportedBlockchainFailure(String blockchain) =>
//   ServerFailure(message: '${blockchain.toUpperCase()} $blockchainIsNotSupportedYet');

User? get currentUser => locator.get<UserService>().getCached().$2;

@singleton
class UserService extends ClientEitherResponseHandler {
  final IpfsClient ipfsClient;
  final ICacheStorage cacheStorage;
  final BasisHttpClient httpClient;

  UserService(
    this.ipfsClient,
    this.cacheStorage,
    this.httpClient,
  );

  BasisHttpClient get _httpClient => httpClient..urlBase = Defines.apiUrl;

  Future<(Failure?, User?)> create({
    required User user,
  }) async {
    final result = await handleClientEitherResponse(
      _httpClient.POST('users', body: user.toJson()),
    );

    if (result.$1 != null) return (result.$1, null);

    return (null, User.fromJson(result.$2!.data['data']));
  }

  Future<(Failure?, User?)> update({
    required User user,
  }) async {
    final result = await handleClientEitherResponse(
      _httpClient.PUT('users/${user.pubKey}', body: user.toJson()),
    );

    if (result.$1 != null) return (result.$1, null);

    if (result.$2!.data['message'] != null) return (null, null);

    return (null, User.fromJson(result.$2!.data['data']));
  }

  Future<(Failure?, CompleteResponse<User>?)> getAll(QueryFilters filters) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('users${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: List.from(result.$2!.data['data']).map((e) => User.fromJson(e)).toList(),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, User?)> get(String pubKey) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('users/$pubKey'),
    );

    if (result.$1 != null) return (result.$1, null);

    if (result.$2 != null && result.$2!.data['statusCode'] == 0) {
      return (ServerFailure(message: result.$2!.data['message']), null);
    }

    final data = result.$2!.data['data'];

    final user = data != null ? User.fromJson(data!) : null;

    cache(user!, user.pubKey);

    return (null, user);
  }

  Future<(Failure?, CompleteResponse<User>?)> search(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('users/search/${filters.key}${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: List.from(result.$2?.data['data'] ?? []).map((e) => User.fromJson(e)).toList(),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<User>?)> getUsers(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('users/search/user/all${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: List.from(result.$2!.data['data']).map((e) => User.fromJson(e)).toList(),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<User>?)> getFollowers(QueryFilters filters) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('users/followers/${filters.key}${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: List.from(result.$2!.data['data']).map((e) => User.fromJson(e)).toList(),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<User>?)> getFollowing(QueryFilters filters) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('users/following/${filters.key}${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: List.from(result.$2!.data['data']).map((e) => User.fromJson(e)).toList(),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<User>?)> getUsersByPubKeys(
    QueryFilters filters,
    List<String> pubKeys,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.POST(
        'users/pubkeys${filters.lazyGet()}',
        body: {'pubkeys': pubKeys},
      ),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: List.from(result.$2!.data['data']).map((e) => User.fromJson(e)).toList(),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<User>?)> searchUsers(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('users/search/user/${filters.key}${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: List.from(result.$2!.data['data']).map((e) => User.fromJson(e)).toList(),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<User>?)> getAllChannels(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('users/search/channel/all${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: List.from(result.$2!.data['data']).map((e) => User.fromJson(e)).toList(),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<User>?)> searchChannels(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('users/search/channel/${filters.key}${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: List.from(result.$2!.data['data']).map((e) => User.fromJson(e)).toList(),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, User?)> byUsername(String username) async {
    final result = await handleClientEitherResponse(
      _httpClient.POST('users/username', body: {'username': username}),
    );

    if (result.$1 != null) return (result.$1, null);

    final data = result.$2?.data['data'];

    final user = data != null ? User.fromJson(data!) : null;

    cache(user!, user.pubKey);

    return (null, user);
  }

  Future<(Failure?, CompleteResponse<User>?)> getByUsernames(
    List<String> usernames,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.POST('users/usernames', body: {'usernames': usernames}),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: List.from(result.$2!.data['data']).map((e) => User.fromJson(e)).toList(),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, bool)> delete(String pubKey) async {
    final result = await handleClientEitherResponse(
      _httpClient.DELETE('users/$pubKey'),
    );

    if (result.$1 != null) return (result.$1, false);

    return (null, result.$2?.data['statusCode'] == 200);
  }

  /// cache
  Future<(Failure?, bool)> cache(User user, [String? key]) async {
    try {
      final result = await cacheStorage.setString(
        key ?? userCacheKey,
        jsonEncode(user.toJson()),
      );
      if (result) return (null, true);

      return (const CacheFailure(message: errorCachingUser), false);
    } catch (e) {
      return (CacheFailure(message: e.toString()), false);
    }
  }

  (Failure?, User?) getCached([String? key]) {
    try {
      final result = cacheStorage.getString(key ?? userCacheKey);
      if (result != null) {
        return (null, User.fromJson(jsonDecode(result)));
      }

      return (const CacheFailure(message: noUserFoundOnCache), null);
    } catch (e) {
      return (CacheFailure(message: e.toString()), null);
    }
  }

  Future<(Failure?, bool)> cacheUsers(String key, CompleteResponse<User> value) async {
    final result = await cacheStorage.setString(
      key,
      jsonEncode(value.toMap(value.data.map((e) => e.toJson()).toList())),
    );

    if (!result) {
      return (const CacheFailure(message: 'Error caching users'), false);
    }

    return (null, true);
  }

  (Failure?, CompleteResponse<User>?) getCachedUsers(String key) {
    final result = cacheStorage.getString(key);

    if (result == null) {
      return (const CacheFailure(message: 'Error getting cached users'), null);
    }

    final decodeResult = jsonDecode(result);
    final data = List<User>.from(decodeResult['data'].map((e) => User.fromJson(e)));

    return (null, CompleteResponse<User>.fromMap(decodeResult, data));
  }
}
