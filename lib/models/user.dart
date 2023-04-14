class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Kelompok 7 Kelas B",
      username: "Kelompok7-B",
      email: "kelompok7B@email.com",
      profilePhoto:
          "https://th.bing.com/th/id/OIP.S0Rl8BNN7u2UvA8CyiIWPgHaIU?w=184&h=207&c=7&r=0&o=5&pid=1.7",
      phoneNumber: "087123456789",
    );
  }
}
