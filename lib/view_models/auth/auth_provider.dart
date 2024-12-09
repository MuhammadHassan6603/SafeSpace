import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:safe_space/models/user_model/user_model.dart';

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  UserModel? _currentUser;

  UserModel? get currentUser => _currentUser;

  // Sign up user
  Future<String> signUp(String username, String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      log('USER CREATED');
      UserModel newUser = UserModel(
        uid: userCredential.user!.uid,
        username: username,
        email: email,
        profilePic: null, 
        token: null,
      );

      await _firestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .set(newUser.toMap());
          log('STORED IN DATAVASE');
          log('User Data: ${newUser.toMap()}');

      _currentUser = newUser;
      notifyListeners();

      return "Success";
    } on FirebaseAuthException catch (e) {
      return e.message ?? "An error occurred";
    }
  }

  // Login user
  Future<String> login(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Fetch user data from Firestore
      DocumentSnapshot userDoc = await _firestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .get();

      _currentUser = UserModel.fromMap(userDoc.data() as Map<String, dynamic>);
      notifyListeners();

      return "Success";
    } on FirebaseAuthException catch (e) {
      return e.message ?? "An error occurred";
    }
  }

  // Logout user
  Future<void> logout() async {
    await _auth.signOut();
    _currentUser = null;
    notifyListeners();
  }
}
