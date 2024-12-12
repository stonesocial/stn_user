// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get pubKey => throw _privateConstructorUsedError;
  UserInfo get info => throw _privateConstructorUsedError;
  BlockchainInfo get bcInfo => throw _privateConstructorUsedError;
  UserInteraction get interaction => throw _privateConstructorUsedError;
  DeviceInfo get deviceInfo => throw _privateConstructorUsedError;
  Wallet get wallet => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String pubKey,
      UserInfo info,
      BlockchainInfo bcInfo,
      UserInteraction interaction,
      DeviceInfo deviceInfo,
      Wallet wallet,
      String createdAt,
      String updatedAt});

  $UserInfoCopyWith<$Res> get info;
  $BlockchainInfoCopyWith<$Res> get bcInfo;
  $UserInteractionCopyWith<$Res> get interaction;
  $DeviceInfoCopyWith<$Res> get deviceInfo;
  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pubKey = null,
    Object? info = null,
    Object? bcInfo = null,
    Object? interaction = null,
    Object? deviceInfo = null,
    Object? wallet = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      pubKey: null == pubKey
          ? _value.pubKey
          : pubKey // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      bcInfo: null == bcInfo
          ? _value.bcInfo
          : bcInfo // ignore: cast_nullable_to_non_nullable
              as BlockchainInfo,
      interaction: null == interaction
          ? _value.interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as UserInteraction,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res> get info {
    return $UserInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BlockchainInfoCopyWith<$Res> get bcInfo {
    return $BlockchainInfoCopyWith<$Res>(_value.bcInfo, (value) {
      return _then(_value.copyWith(bcInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInteractionCopyWith<$Res> get interaction {
    return $UserInteractionCopyWith<$Res>(_value.interaction, (value) {
      return _then(_value.copyWith(interaction: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceInfoCopyWith<$Res> get deviceInfo {
    return $DeviceInfoCopyWith<$Res>(_value.deviceInfo, (value) {
      return _then(_value.copyWith(deviceInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletCopyWith<$Res> get wallet {
    return $WalletCopyWith<$Res>(_value.wallet, (value) {
      return _then(_value.copyWith(wallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pubKey,
      UserInfo info,
      BlockchainInfo bcInfo,
      UserInteraction interaction,
      DeviceInfo deviceInfo,
      Wallet wallet,
      String createdAt,
      String updatedAt});

  @override
  $UserInfoCopyWith<$Res> get info;
  @override
  $BlockchainInfoCopyWith<$Res> get bcInfo;
  @override
  $UserInteractionCopyWith<$Res> get interaction;
  @override
  $DeviceInfoCopyWith<$Res> get deviceInfo;
  @override
  $WalletCopyWith<$Res> get wallet;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pubKey = null,
    Object? info = null,
    Object? bcInfo = null,
    Object? interaction = null,
    Object? deviceInfo = null,
    Object? wallet = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$UserImpl(
      pubKey: null == pubKey
          ? _value.pubKey
          : pubKey // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      bcInfo: null == bcInfo
          ? _value.bcInfo
          : bcInfo // ignore: cast_nullable_to_non_nullable
              as BlockchainInfo,
      interaction: null == interaction
          ? _value.interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as UserInteraction,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfo,
      wallet: null == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as Wallet,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl extends _User {
  _$UserImpl(
      {required this.pubKey,
      required this.info,
      required this.bcInfo,
      required this.interaction,
      required this.deviceInfo,
      required this.wallet,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String pubKey;
  @override
  final UserInfo info;
  @override
  final BlockchainInfo bcInfo;
  @override
  final UserInteraction interaction;
  @override
  final DeviceInfo deviceInfo;
  @override
  final Wallet wallet;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'User(pubKey: $pubKey, info: $info, bcInfo: $bcInfo, interaction: $interaction, deviceInfo: $deviceInfo, wallet: $wallet, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.pubKey, pubKey) || other.pubKey == pubKey) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.bcInfo, bcInfo) || other.bcInfo == bcInfo) &&
            (identical(other.interaction, interaction) ||
                other.interaction == interaction) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pubKey, info, bcInfo,
      interaction, deviceInfo, wallet, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User extends User {
  factory _User(
      {required final String pubKey,
      required final UserInfo info,
      required final BlockchainInfo bcInfo,
      required final UserInteraction interaction,
      required final DeviceInfo deviceInfo,
      required final Wallet wallet,
      required final String createdAt,
      required final String updatedAt}) = _$UserImpl;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get pubKey;
  @override
  UserInfo get info;
  @override
  BlockchainInfo get bcInfo;
  @override
  UserInteraction get interaction;
  @override
  DeviceInfo get deviceInfo;
  @override
  Wallet get wallet;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlockchainInfo _$BlockchainInfoFromJson(Map<String, dynamic> json) {
  return _BlockchainInfo.fromJson(json);
}

/// @nodoc
mixin _$BlockchainInfo {
  int? get deterministicId => throw _privateConstructorUsedError;
  int get bcSync => throw _privateConstructorUsedError;
  String get bcName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlockchainInfoCopyWith<BlockchainInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockchainInfoCopyWith<$Res> {
  factory $BlockchainInfoCopyWith(
          BlockchainInfo value, $Res Function(BlockchainInfo) then) =
      _$BlockchainInfoCopyWithImpl<$Res, BlockchainInfo>;
  @useResult
  $Res call({int? deterministicId, int bcSync, String bcName});
}

/// @nodoc
class _$BlockchainInfoCopyWithImpl<$Res, $Val extends BlockchainInfo>
    implements $BlockchainInfoCopyWith<$Res> {
  _$BlockchainInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deterministicId = freezed,
    Object? bcSync = null,
    Object? bcName = null,
  }) {
    return _then(_value.copyWith(
      deterministicId: freezed == deterministicId
          ? _value.deterministicId
          : deterministicId // ignore: cast_nullable_to_non_nullable
              as int?,
      bcSync: null == bcSync
          ? _value.bcSync
          : bcSync // ignore: cast_nullable_to_non_nullable
              as int,
      bcName: null == bcName
          ? _value.bcName
          : bcName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockchainInfoImplCopyWith<$Res>
    implements $BlockchainInfoCopyWith<$Res> {
  factory _$$BlockchainInfoImplCopyWith(_$BlockchainInfoImpl value,
          $Res Function(_$BlockchainInfoImpl) then) =
      __$$BlockchainInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? deterministicId, int bcSync, String bcName});
}

/// @nodoc
class __$$BlockchainInfoImplCopyWithImpl<$Res>
    extends _$BlockchainInfoCopyWithImpl<$Res, _$BlockchainInfoImpl>
    implements _$$BlockchainInfoImplCopyWith<$Res> {
  __$$BlockchainInfoImplCopyWithImpl(
      _$BlockchainInfoImpl _value, $Res Function(_$BlockchainInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deterministicId = freezed,
    Object? bcSync = null,
    Object? bcName = null,
  }) {
    return _then(_$BlockchainInfoImpl(
      deterministicId: freezed == deterministicId
          ? _value.deterministicId
          : deterministicId // ignore: cast_nullable_to_non_nullable
              as int?,
      bcSync: null == bcSync
          ? _value.bcSync
          : bcSync // ignore: cast_nullable_to_non_nullable
              as int,
      bcName: null == bcName
          ? _value.bcName
          : bcName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockchainInfoImpl extends _BlockchainInfo {
  _$BlockchainInfoImpl(
      {this.deterministicId, required this.bcSync, required this.bcName})
      : super._();

  factory _$BlockchainInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockchainInfoImplFromJson(json);

  @override
  final int? deterministicId;
  @override
  final int bcSync;
  @override
  final String bcName;

  @override
  String toString() {
    return 'BlockchainInfo(deterministicId: $deterministicId, bcSync: $bcSync, bcName: $bcName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockchainInfoImpl &&
            (identical(other.deterministicId, deterministicId) ||
                other.deterministicId == deterministicId) &&
            (identical(other.bcSync, bcSync) || other.bcSync == bcSync) &&
            (identical(other.bcName, bcName) || other.bcName == bcName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deterministicId, bcSync, bcName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockchainInfoImplCopyWith<_$BlockchainInfoImpl> get copyWith =>
      __$$BlockchainInfoImplCopyWithImpl<_$BlockchainInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockchainInfoImplToJson(
      this,
    );
  }
}

abstract class _BlockchainInfo extends BlockchainInfo {
  factory _BlockchainInfo(
      {final int? deterministicId,
      required final int bcSync,
      required final String bcName}) = _$BlockchainInfoImpl;
  _BlockchainInfo._() : super._();

  factory _BlockchainInfo.fromJson(Map<String, dynamic> json) =
      _$BlockchainInfoImpl.fromJson;

  @override
  int? get deterministicId;
  @override
  int get bcSync;
  @override
  String get bcName;
  @override
  @JsonKey(ignore: true)
  _$$BlockchainInfoImplCopyWith<_$BlockchainInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
  String get username => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  String get accountType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {String username,
      String displayName,
      String bio,
      String avatar,
      String cover,
      String accountType});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? displayName = null,
    Object? bio = null,
    Object? avatar = null,
    Object? cover = null,
    Object? accountType = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String displayName,
      String bio,
      String avatar,
      String cover,
      String accountType});
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? displayName = null,
    Object? bio = null,
    Object? avatar = null,
    Object? cover = null,
    Object? accountType = null,
  }) {
    return _then(_$UserInfoImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoImpl extends _UserInfo {
  _$UserInfoImpl(
      {required this.username,
      required this.displayName,
      required this.bio,
      required this.avatar,
      required this.cover,
      required this.accountType})
      : super._();

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoImplFromJson(json);

  @override
  final String username;
  @override
  final String displayName;
  @override
  final String bio;
  @override
  final String avatar;
  @override
  final String cover;
  @override
  final String accountType;

  @override
  String toString() {
    return 'UserInfo(username: $username, displayName: $displayName, bio: $bio, avatar: $avatar, cover: $cover, accountType: $accountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, username, displayName, bio, avatar, cover, accountType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoImplToJson(
      this,
    );
  }
}

abstract class _UserInfo extends UserInfo {
  factory _UserInfo(
      {required final String username,
      required final String displayName,
      required final String bio,
      required final String avatar,
      required final String cover,
      required final String accountType}) = _$UserInfoImpl;
  _UserInfo._() : super._();

  factory _UserInfo.fromJson(Map<String, dynamic> json) =
      _$UserInfoImpl.fromJson;

  @override
  String get username;
  @override
  String get displayName;
  @override
  String get bio;
  @override
  String get avatar;
  @override
  String get cover;
  @override
  String get accountType;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInteraction _$UserInteractionFromJson(Map<String, dynamic> json) {
  return _UserInteraction.fromJson(json);
}

/// @nodoc
mixin _$UserInteraction {
  int get followerCount => throw _privateConstructorUsedError;
  int get followingCount => throw _privateConstructorUsedError;
  int get postCount => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  List<String> get followedBy => throw _privateConstructorUsedError;
  List<String> get following => throw _privateConstructorUsedError;
  List<String> get blocked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInteractionCopyWith<UserInteraction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInteractionCopyWith<$Res> {
  factory $UserInteractionCopyWith(
          UserInteraction value, $Res Function(UserInteraction) then) =
      _$UserInteractionCopyWithImpl<$Res, UserInteraction>;
  @useResult
  $Res call(
      {int followerCount,
      int followingCount,
      int postCount,
      int viewCount,
      List<String> followedBy,
      List<String> following,
      List<String> blocked});
}

/// @nodoc
class _$UserInteractionCopyWithImpl<$Res, $Val extends UserInteraction>
    implements $UserInteractionCopyWith<$Res> {
  _$UserInteractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followerCount = null,
    Object? followingCount = null,
    Object? postCount = null,
    Object? viewCount = null,
    Object? followedBy = null,
    Object? following = null,
    Object? blocked = null,
  }) {
    return _then(_value.copyWith(
      followerCount: null == followerCount
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      postCount: null == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      followedBy: null == followedBy
          ? _value.followedBy
          : followedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInteractionImplCopyWith<$Res>
    implements $UserInteractionCopyWith<$Res> {
  factory _$$UserInteractionImplCopyWith(_$UserInteractionImpl value,
          $Res Function(_$UserInteractionImpl) then) =
      __$$UserInteractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int followerCount,
      int followingCount,
      int postCount,
      int viewCount,
      List<String> followedBy,
      List<String> following,
      List<String> blocked});
}

/// @nodoc
class __$$UserInteractionImplCopyWithImpl<$Res>
    extends _$UserInteractionCopyWithImpl<$Res, _$UserInteractionImpl>
    implements _$$UserInteractionImplCopyWith<$Res> {
  __$$UserInteractionImplCopyWithImpl(
      _$UserInteractionImpl _value, $Res Function(_$UserInteractionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followerCount = null,
    Object? followingCount = null,
    Object? postCount = null,
    Object? viewCount = null,
    Object? followedBy = null,
    Object? following = null,
    Object? blocked = null,
  }) {
    return _then(_$UserInteractionImpl(
      followerCount: null == followerCount
          ? _value.followerCount
          : followerCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      postCount: null == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      followedBy: null == followedBy
          ? _value._followedBy
          : followedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      following: null == following
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      blocked: null == blocked
          ? _value._blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInteractionImpl extends _UserInteraction {
  _$UserInteractionImpl(
      {required this.followerCount,
      required this.followingCount,
      required this.postCount,
      required this.viewCount,
      required final List<String> followedBy,
      required final List<String> following,
      required final List<String> blocked})
      : _followedBy = followedBy,
        _following = following,
        _blocked = blocked,
        super._();

  factory _$UserInteractionImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInteractionImplFromJson(json);

  @override
  final int followerCount;
  @override
  final int followingCount;
  @override
  final int postCount;
  @override
  final int viewCount;
  final List<String> _followedBy;
  @override
  List<String> get followedBy {
    if (_followedBy is EqualUnmodifiableListView) return _followedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followedBy);
  }

  final List<String> _following;
  @override
  List<String> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  final List<String> _blocked;
  @override
  List<String> get blocked {
    if (_blocked is EqualUnmodifiableListView) return _blocked;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocked);
  }

  @override
  String toString() {
    return 'UserInteraction(followerCount: $followerCount, followingCount: $followingCount, postCount: $postCount, viewCount: $viewCount, followedBy: $followedBy, following: $following, blocked: $blocked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInteractionImpl &&
            (identical(other.followerCount, followerCount) ||
                other.followerCount == followerCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.postCount, postCount) ||
                other.postCount == postCount) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            const DeepCollectionEquality()
                .equals(other._followedBy, _followedBy) &&
            const DeepCollectionEquality()
                .equals(other._following, _following) &&
            const DeepCollectionEquality().equals(other._blocked, _blocked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      followerCount,
      followingCount,
      postCount,
      viewCount,
      const DeepCollectionEquality().hash(_followedBy),
      const DeepCollectionEquality().hash(_following),
      const DeepCollectionEquality().hash(_blocked));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInteractionImplCopyWith<_$UserInteractionImpl> get copyWith =>
      __$$UserInteractionImplCopyWithImpl<_$UserInteractionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInteractionImplToJson(
      this,
    );
  }
}

abstract class _UserInteraction extends UserInteraction {
  factory _UserInteraction(
      {required final int followerCount,
      required final int followingCount,
      required final int postCount,
      required final int viewCount,
      required final List<String> followedBy,
      required final List<String> following,
      required final List<String> blocked}) = _$UserInteractionImpl;
  _UserInteraction._() : super._();

  factory _UserInteraction.fromJson(Map<String, dynamic> json) =
      _$UserInteractionImpl.fromJson;

  @override
  int get followerCount;
  @override
  int get followingCount;
  @override
  int get postCount;
  @override
  int get viewCount;
  @override
  List<String> get followedBy;
  @override
  List<String> get following;
  @override
  List<String> get blocked;
  @override
  @JsonKey(ignore: true)
  _$$UserInteractionImplCopyWith<_$UserInteractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) {
  return _DeviceInfo.fromJson(json);
}

/// @nodoc
mixin _$DeviceInfo {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceInfoCopyWith<DeviceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoCopyWith<$Res> {
  factory $DeviceInfoCopyWith(
          DeviceInfo value, $Res Function(DeviceInfo) then) =
      _$DeviceInfoCopyWithImpl<$Res, DeviceInfo>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$DeviceInfoCopyWithImpl<$Res, $Val extends DeviceInfo>
    implements $DeviceInfoCopyWith<$Res> {
  _$DeviceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceInfoImplCopyWith<$Res>
    implements $DeviceInfoCopyWith<$Res> {
  factory _$$DeviceInfoImplCopyWith(
          _$DeviceInfoImpl value, $Res Function(_$DeviceInfoImpl) then) =
      __$$DeviceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$DeviceInfoImplCopyWithImpl<$Res>
    extends _$DeviceInfoCopyWithImpl<$Res, _$DeviceInfoImpl>
    implements _$$DeviceInfoImplCopyWith<$Res> {
  __$$DeviceInfoImplCopyWithImpl(
      _$DeviceInfoImpl _value, $Res Function(_$DeviceInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$DeviceInfoImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceInfoImpl extends _DeviceInfo {
  _$DeviceInfoImpl({required this.token}) : super._();

  factory _$DeviceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceInfoImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'DeviceInfo(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoImplCopyWith<_$DeviceInfoImpl> get copyWith =>
      __$$DeviceInfoImplCopyWithImpl<_$DeviceInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceInfoImplToJson(
      this,
    );
  }
}

abstract class _DeviceInfo extends DeviceInfo {
  factory _DeviceInfo({required final String token}) = _$DeviceInfoImpl;
  _DeviceInfo._() : super._();

  factory _DeviceInfo.fromJson(Map<String, dynamic> json) =
      _$DeviceInfoImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$DeviceInfoImplCopyWith<_$DeviceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Wallet _$WalletFromJson(Map<String, dynamic> json) {
  return _Wallet.fromJson(json);
}

/// @nodoc
mixin _$Wallet {
  int get xp => throw _privateConstructorUsedError;
  int get stn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletCopyWith<Wallet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCopyWith<$Res> {
  factory $WalletCopyWith(Wallet value, $Res Function(Wallet) then) =
      _$WalletCopyWithImpl<$Res, Wallet>;
  @useResult
  $Res call({int xp, int stn});
}

/// @nodoc
class _$WalletCopyWithImpl<$Res, $Val extends Wallet>
    implements $WalletCopyWith<$Res> {
  _$WalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xp = null,
    Object? stn = null,
  }) {
    return _then(_value.copyWith(
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as int,
      stn: null == stn
          ? _value.stn
          : stn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletImplCopyWith<$Res> implements $WalletCopyWith<$Res> {
  factory _$$WalletImplCopyWith(
          _$WalletImpl value, $Res Function(_$WalletImpl) then) =
      __$$WalletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int xp, int stn});
}

/// @nodoc
class __$$WalletImplCopyWithImpl<$Res>
    extends _$WalletCopyWithImpl<$Res, _$WalletImpl>
    implements _$$WalletImplCopyWith<$Res> {
  __$$WalletImplCopyWithImpl(
      _$WalletImpl _value, $Res Function(_$WalletImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xp = null,
    Object? stn = null,
  }) {
    return _then(_$WalletImpl(
      xp: null == xp
          ? _value.xp
          : xp // ignore: cast_nullable_to_non_nullable
              as int,
      stn: null == stn
          ? _value.stn
          : stn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletImpl extends _Wallet {
  _$WalletImpl({required this.xp, required this.stn}) : super._();

  factory _$WalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletImplFromJson(json);

  @override
  final int xp;
  @override
  final int stn;

  @override
  String toString() {
    return 'Wallet(xp: $xp, stn: $stn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletImpl &&
            (identical(other.xp, xp) || other.xp == xp) &&
            (identical(other.stn, stn) || other.stn == stn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, xp, stn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletImplCopyWith<_$WalletImpl> get copyWith =>
      __$$WalletImplCopyWithImpl<_$WalletImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletImplToJson(
      this,
    );
  }
}

abstract class _Wallet extends Wallet {
  factory _Wallet({required final int xp, required final int stn}) =
      _$WalletImpl;
  _Wallet._() : super._();

  factory _Wallet.fromJson(Map<String, dynamic> json) = _$WalletImpl.fromJson;

  @override
  int get xp;
  @override
  int get stn;
  @override
  @JsonKey(ignore: true)
  _$$WalletImplCopyWith<_$WalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
