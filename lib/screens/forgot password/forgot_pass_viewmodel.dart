import 'package:flutter/material.dart';
import 'package:login_app/screens/sign-in/sign_in_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Forgot_logic {
  Future forgotpassword(
      TextEditingController usernameController,
      TextEditingController newpasswordController,
      TextEditingController confirmpasswordController,
      context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var stroredUsername = await prefs.getString('username');
    if (usernameController.text.isEmpty ||
        newpasswordController.text.isEmpty ||
        confirmpasswordController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Please fill in all fields.'),
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
      return;
    }
    if (stroredUsername == usernameController.text) {
      if (newpasswordController.text == confirmpasswordController.text) {
        prefs.setString('password', confirmpasswordController.text);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Success!'),
              content: const Text('Password successfully changed.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Sign_In()),
                    );
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Error'),
              content: const Text('Password do no match'),
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
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Username not found.'),
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
