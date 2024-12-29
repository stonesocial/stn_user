import '../stn_user.dart';

extension ListHandler on List<User> {
  List<User> keepCurrentAlive(List<User> currentState) => where((e) => !currentState.map((e) => e.pubKey).contains(e.pubKey)).toList();
}
extension Handler on User {
  bool get currentUserFollows =>
      currentUser != null && interaction.followedBy.contains(currentUser!.pubKey);
  bool get isBlocked =>
      currentUser != null && currentUser!.interaction.blocked.contains(pubKey);
}