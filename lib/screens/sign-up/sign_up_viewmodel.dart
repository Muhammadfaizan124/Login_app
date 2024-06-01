import 'package:flutter/material.dart';
import 'package:login_app/screens/sign-in/sign_in_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  Future<void> signUp(String username, String password, String confirmPassword,
      BuildContext context) async {
    if (password == confirmPassword) {
      // Save the sign-up information
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('username', username);
      await prefs.setString('password', password);

      // Show dialog to notify user that the account has been registered
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Account Registered'),
            content:
                const Text('Your account has been registered successfully.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Sign_In()),
                  );
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // Show error dialog if passwords do not match
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Passwords do not match.'),
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
