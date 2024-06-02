import 'package:flutter/material.dart';
import 'package:login_app/screens/sign-in/sign_in_view.dart';
import 'package:login_app/screens/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home_view extends StatelessWidget {
  const Home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello $finalusername',
              style: TextStyle(fontSize: 30),
            ),
            TextButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove('username');
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Sign_In()),
                );
              },
              child: Text('Remove credential'),
            )
          ],
        ),
      ),
    );
  }
}
