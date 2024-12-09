// ignore_for_file: use_build_context_synchronously, avoid_print

import '../errors/error.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<bool> signUpWithEmailPassword({
  required BuildContext context,
  required String email,
  required String password,
}) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    FirebaseFirestore.instance.collection('users').add({
      'id': userCredential.user?.uid.toString(),
      'email': email,
      'password': password,
      'fullname': 'User',
    });

    return true;
  } on FirebaseAuthException catch (e) {
    print(e.code);
    if (e.code == 'weak-password') {
      AuthError.showMessage(message: "Parol juda zaif.", context: context);
    } else if (e.code == 'email-already-in-use') {
      AuthError.showMessage(
          message: "Email allaqachon ro'yxatdan o'tgan.", context: context);
    } else if (e.code == 'invalid-email') {
      AuthError.showMessage(
          message:
              "Email noto'g'ri formatda kiritildi. Iltimos qaytadan urinib ko'ring!",
          context: context);
    } else {
      print("Xatolik sodir bo'ldi: ${e.message}");
    }
    return false;
  } catch (e) {
    print("Umumiy xatolik: $e");
    return false;
  }
}
