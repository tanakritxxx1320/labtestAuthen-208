import 'package:firebase_auth/firebase_auth.dart';


class AuthService {
  static Future<void> signup(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseException catch (e) {
      print(e.code);
      if (e.code == 'weak=password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  // Declare FirebaseAuth

  // Declare Register Function

  // Declare Login Function

}

