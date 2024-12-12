import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

import '../stn_user.dart';

part 'user.g.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    required String pubKey,
    required UserInfo info,
    required BlockchainInfo bcInfo,
    required UserInteraction interaction,
    required DeviceInfo deviceInfo,
    required Wallet wallet,
    required String createdAt,
    required String updatedAt,
  }) = _User;

  const User._();

  bool get synchronized => bcInfo.bcSync == 1;

  bool get isCurrentUser => pubKey == currentUser?.pubKey;

  bool get isSolanaBc => bcInfo.bcName == Blockchain.solana.name;

  factory User.create({
    required String pubKey,
    required String username,
    String? displayName,
    required String bio,
    required UserInfo info,
    required BlockchainInfo bcInfo,
    required UserInteraction interaction,
    required DeviceInfo deviceInfo,
  }) {
    final now = DateTime.now().toIso8601String();

    return User(
      pubKey: pubKey,
      bcInfo: bcInfo,
      info: info.copyWith(
        username: username,
        displayName: displayName ?? Strings.empty,
        bio: bio,
      ),
      interaction: interaction,
      deviceInfo: deviceInfo,
      wallet: Wallet(xp: 0, stn: 0),
      createdAt: now,
      updatedAt: now,
    );
  }

  User handleFollow() {
    if (currentUserFollows) {
      return copyWith(interaction: interaction.unfollow());
    }

    return copyWith(interaction: interaction.follow());
  }

  User handleOnFollow(User user) {
    if (user.currentUserFollows) {
      return copyWith(interaction: interaction.onFollow(user));
    }

    return copyWith(interaction: interaction.onUnfollow(user));
  }

  User handleBlock(User value) {
    if (value.isBlocked) {
      return copyWith(interaction: interaction.unblock(value));
    }

    return copyWith(interaction: interaction.block(value));
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class BlockchainInfo with _$BlockchainInfo {
  factory BlockchainInfo({
    int? deterministicId,
    required int bcSync,
    required String bcName,
  }) = _BlockchainInfo;

  const BlockchainInfo._();

  factory BlockchainInfo.create({
    required String bcName,
  }) {
    return BlockchainInfo(
        bcSync: 0,
        bcName: bcName,
    );
  }

  factory BlockchainInfo.fromJson(Map<String, dynamic> json) => _$BlockchainInfoFromJson(json);
}

@freezed
class UserInfo with _$UserInfo {
  factory UserInfo({
    required String username,
    required String displayName,
    required String bio,
    required String avatar,
    required String cover,
    required String accountType,
  }) = _UserInfo;

  const UserInfo._();

  factory UserInfo.init({
    required String accountType,
    String? avatar,
  }) {
    return UserInfo(
      bio: Strings.empty,
      username: Strings.empty,
      displayName: Strings.empty,
      accountType: accountType,
      avatar: avatar ?? '${Defines.ipfsGateway}/${accountType == AccountType.user.name
        ? Defines.userPlaceholderCid
        : Defines.channelPlaceholderCid}',
      cover: Strings.empty,
    );
  }

  bool get hasProfileAvatar {
    if (accountType == AccountType.user.name) {
      return avatar.avatarCid != Defines.userPlaceholderCid;
    }

    return avatar.avatarCid != Defines.channelPlaceholderCid;
  }

  factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
}

@freezed
class UserInteraction with _$UserInteraction {
  factory UserInteraction({
    required int followerCount,
    required int followingCount,
    required int postCount,
    required int viewCount,
    required List<String> followedBy,
    required List<String> following,
    required List<String> blocked,
  }) = _UserInteraction;

  const UserInteraction._();

  factory UserInteraction.create() {
    return UserInteraction(
      followerCount: 0,
      followingCount: 0,
      postCount: 0,
      viewCount: 0,
      followedBy: [],
      following: [],
      blocked: [],
    );
  }

  UserInteraction follow() {
    var followedBy = this.followedBy;

    if (!this.followedBy.contains(currentUser!.pubKey)) {
      followedBy = [currentUser!.pubKey, ...this.followedBy];
    }

    return copyWith(
      followerCount: followerCount + 1,
      followedBy: followedBy,
    );
  }

  UserInteraction unfollow() {
    var data = <String>[];
    if (followedBy.contains(currentUser!.pubKey)) {
      data = followedBy.where((e) => e != currentUser!.pubKey).toList();
    }

    return copyWith(
      followerCount: followerCount > 0 ? followerCount - 1 : 0,
      followedBy: data,
    );
  }

  UserInteraction onFollow(User user) {
    var following = this.following;

    if (!this.following.contains(user.pubKey)) {
      following = [user.pubKey, ...this.following];
    }

    return copyWith(
      followingCount: followingCount + 1,
      following: following,
    );
  }

  UserInteraction onUnfollow(User user) {
    var following = <String>[];
    if (following.contains(user.pubKey)) {
      following = this.following.where((e) => e != user.pubKey).toList();
    }

    return copyWith(
      followingCount: followerCount > 0 ? followerCount - 1 : 0,
      following: following,
    );
  }

  UserInteraction block(User user) {
    var blocked = this.blocked;

    if (!currentUser!.isBlocked) {
      blocked = [user.pubKey, ...this.blocked];
    }

    return copyWith(blocked: blocked);
  }

  UserInteraction unblock(User user) {
    var data = <String>[];
    if (currentUser!.isBlocked) {
      data = blocked.where((e) => e != user.pubKey).toList();
    }

    return copyWith(blocked: data);
  }

  factory UserInteraction.fromJson(Map<String, dynamic> json) => _$UserInteractionFromJson(json);
}

@freezed
class DeviceInfo with _$DeviceInfo {
  factory DeviceInfo({
    required String token,
  }) = _DeviceInfo;

  const DeviceInfo._();

  factory DeviceInfo.create(String token) => DeviceInfo(token: token);

  factory DeviceInfo.fromJson(Map<String, dynamic> json) => _$DeviceInfoFromJson(json);
}

@freezed
class Wallet with _$Wallet {
  factory Wallet({
    required int xp,
    required int stn,
  }) = _Wallet;

  const Wallet._();

  factory Wallet.create() => Wallet(xp: 0, stn: 0);

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
}