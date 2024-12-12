enum AccountType { user, channel}

AccountType getAccountTypeByName(String? name) {
  return switch (name) {
    'user' => AccountType.user,
    'channel' => AccountType.channel,
    _ => AccountType.user,
  };
}