import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../errors/error.dart'; // Xatolarni ko'rsatish uchun AuthError klassi

Future<bool> signInWithEmailPassword({
  required BuildContext context,
  required String email,
  required String password,
}) async {
  try {
    // Firebase bilan autentifikatsiya qilish
    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    log('User signed in: ${userCredential.user?.email}');
    return true;
  } on FirebaseAuthException catch (e) {
    // FirebaseAuthException xatolarini qayta ishlash
    print(e.code);
    switch (e.code) {
      case 'invalid-credential':
        AuthError.showMessage(
          message:
              "Foydalanuvchi topilmadi! Emailni tekshirib qaytadan urinib ko'ring.",
          context: context,
        );
        break;
      case 'wrong-password':
        AuthError.showMessage(
          message: "Parol noto'g'ri! Iltimos, qaytadan urinib ko'ring.",
          context: context,
        );
        break;
      case 'invalid-email':
        AuthError.showMessage(
          message: "Email noto'g'ri formatda. To'g'ri email kiriting.",
          context: context,
        );
        break;
      case 'user-disabled':
        AuthError.showMessage(
          message:
              "Bu foydalanuvchi bloklangan. Qo'llab-quvvatlashga murojaat qiling.",
          context: context,
        );
        break;
      default:
        AuthError.showMessage(
          message:
              "Noma'lum xatolik yuz berdi. Keyinroq qaytadan urinib ko'ring.",
          context: context,
        );
    }
    return false;
  } catch (e) {
    log('Exception: ${e.toString()}');
    AuthError.showMessage(
      message: "Xatolik yuz berdi. Keyinroq qaytadan urinib ko'ring.",
      context: context,
    );
    return false;
  }
}
