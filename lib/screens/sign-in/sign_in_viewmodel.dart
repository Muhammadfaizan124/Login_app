import 'package:flutter/material.dart';
import 'package:login_app/screens/home/home_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInlogic {
  Future<void> signIn(usernameController, passwordController, context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stroredUsername = prefs.getString('username');
    String? stroredPassword = prefs.getString('password');

    prefs.getString('password');
    if (stroredUsername == usernameController.text &&
        stroredPassword == passwordController.text) {
      usernameController.clear();
      passwordController.clear();

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home_view()),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Username or Password is incorrect.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}
