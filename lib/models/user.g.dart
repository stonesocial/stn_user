// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      pubKey: json['pubKey'] as String,
      info: UserInfo.fromJson(json['info'] as Map<String, dynamic>),
      bcInfo: BlockchainInfo.fromJson(json['bcInfo'] as Map<String, dynamic>),
      interaction:
          UserInteraction.fromJson(json['interaction'] as Map<String, dynamic>),
      deviceInfo:
          DeviceInfo.fromJson(json['deviceInfo'] as Map<String, dynamic>),
      wallet: json['wallet'] != null ? (Wallet.fromJson(json['wallet'] as Map<String, dynamic>)) : Wallet.create(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'pubKey': instance.pubKey,
      'info': instance.info,
      'bcInfo': instance.bcInfo,
      'interaction': instance.interaction,
      'deviceInfo': instance.deviceInfo,
      'wallet': instance.wallet,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$BlockchainInfoImpl _$$BlockchainInfoImplFromJson(Map<String, dynamic> json) =>
    _$BlockchainInfoImpl(
      deterministicId: (json['deterministicId'] as num?)?.toInt(),
      bcSync: (json['bcSync'] as num).toInt(),
      bcName: json['bcName'] as String,
    );

Map<String, dynamic> _$$BlockchainInfoImplToJson(
        _$BlockchainInfoImpl instance) =>
    <String, dynamic>{
      'deterministicId': instance.deterministicId,
      'bcSync': instance.bcSync,
      'bcName': instance.bcName,
    };

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      username: json['username'] as String,
      displayName: json['displayName'] as String,
      bio: json['bio'] as String,
      avatar: json['avatar'] as String,
      cover: json['cover'] as String,
      accountType: json['accountType'] as String,
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'displayName': instance.displayName,
      'bio': instance.bio,
      'avatar': instance.avatar,
      'cover': instance.cover,
      'accountType': instance.accountType,
    };

_$UserInteractionImpl _$$UserInteractionImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInteractionImpl(
      followerCount: (json['followerCount'] as num).toInt(),
      followingCount: (json['followingCount'] as num).toInt(),
      postCount: (json['postCount'] as num).toInt(),
      viewCount: (json['viewCount'] as num).toInt(),
      followedBy: (json['followedBy'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      following:
          (json['following'] as List<dynamic>).map((e) => e as String).toList(),
      blocked:
          (json['blocked'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UserInteractionImplToJson(
        _$UserInteractionImpl instance) =>
    <String, dynamic>{
      'followerCount': instance.followerCount,
      'followingCount': instance.followingCount,
      'postCount': instance.postCount,
      'viewCount': instance.viewCount,
      'followedBy': instance.followedBy,
      'following': instance.following,
      'blocked': instance.blocked,
    };

_$DeviceInfoImpl _$$DeviceInfoImplFromJson(Map<String, dynamic> json) =>
    _$DeviceInfoImpl(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$DeviceInfoImplToJson(_$DeviceInfoImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

_$WalletImpl _$$WalletImplFromJson(Map<String, dynamic> json) => _$WalletImpl(
      xp: (json['xp'] as num).toInt(),
      stn: (json['stn'] as num).toInt(),
    );

Map<String, dynamic> _$$WalletImplToJson(_$WalletImpl instance) =>
    <String, dynamic>{
      'xp': instance.xp,
      'stn': instance.stn,
    };
