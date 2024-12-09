class UserModel {
  final String uid;
  final String username;
  final String email;
  final String? profilePic;
  final String? token;

  UserModel({
    required this.uid,
    required this.username,
    required this.email,
    this.profilePic,
    this.token,
  });

  // Convert UserModel to a Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'username': username,
      'email': email,
      'profilePic': profilePic,
      'token': token,
    };
  }

  // Create UserModel from Firestore data
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] as String,
      username: map['username'] as String,
      email: map['email'] as String,
      profilePic: map['profilePic'] as String?,
      token: map['token'] as String?,
    );
  }
}
