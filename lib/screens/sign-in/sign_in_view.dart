import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/screens/home/home_view.dart';
import 'package:login_app/screens/sign-up/sign_up_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class Sign_In extends StatelessWidget {
  Sign_In({super.key});
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 206, 205, 205),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5, 50, 5, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SingleChildScrollView(),
              header(),
              const SizedBox(height: 10),
              inputFeilds(usernameController, passwordController, context),
              const SizedBox(height: 20),
              forgotpassword(),
              const SizedBox(height: 70),
              signUp(context),
            ],
          ),
        ),
      ),
    );
  }
}

header() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Center(
        child: Text(
          'WELCOME',
          style: GoogleFonts.pacifico(
            color: Colors.black,
            fontSize: 45,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      const Icon(
        Icons.login_rounded,
        size: 50,
      ),
    ],
  );
}

inputFeilds(usernameController, passwordController, context) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              hintText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(18),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () async {
                final SharedPreferences sharedPreferences =
                    await SharedPreferences.getInstance();
                sharedPreferences.setString(
                    'username', usernameController.text);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home_view()),
                );
              },
              style: ElevatedButton.styleFrom(minimumSize: const Size(500, 50)),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

forgotpassword() {
  return TextButton(
    onPressed: () {},
    child: const Text(
      'Forgot Password?',
      style: TextStyle(
        fontSize: 15,
      ),
    ),
  );
}

signUp(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      const Text('Dont have an account?'),
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Sign_Up()),
          );
        },
        child: const Text('Sign up'),
      )
    ],
  );
}
