class User {
  String id;
  String email;
  String password;
  String? fullname;

  User({
    required this.id,
    required this.email,
    required this.password,
    this.fullname,
  });

  Map<String, dynamic> toJson(User? user) {
    return {
      'id': user?.id,
      'email': user?.email,
      'password': user?.password,
      'fullname': user?.fullname ?? 'User',
    };
  }
}
