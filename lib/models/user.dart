// ignore_for_file: public_member_api_docs, sort_constructors_first


class User {
  final String uid;
  final String name;
  final String email;
  final String image;
  final DateTime lastActive;
  final bool isOnline;
  User({
    required this.uid,
    required this.name,
    required this.email,
    required this.image,
    required this.lastActive,
    required this.isOnline,
  });
  factory User.fromJson(Map<String, dynamic> json) =>
    User(
        uid: json['uid'],
        name: json['name'],
        email: json['email'],
        image: json['image'],
        lastActive: json['lastActive'].toDate(),
        isOnline: json['isOnline'] ?? false);
}
