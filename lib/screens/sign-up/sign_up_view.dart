import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Sign_Up extends StatelessWidget {
  Sign_Up({super.key});
  TextEditingController newusernameController = TextEditingController();
  TextEditingController newpasswordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 206, 205, 205),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 50, 5, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              header(),
              const SizedBox(height: 10),
              inputFeilds(newusernameController, newpasswordController,
                  confirmpasswordController),
              const SizedBox(height: 50),
              signIn(),
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
          'SIGN UP',
          style: GoogleFonts.pacifico(
            color: Colors.black,
            fontSize: 45,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      SizedBox(height: 20),
      const Icon(
        Icons.edit_document,
        size: 50,
      ),
    ],
  );
}

inputFeilds(
    newusernameController, newpasswordController, confirmpasswordController) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: newusernameController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              hintText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          TextField(
            controller: newpasswordController,
            decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(18),
                )),
          ),
          TextField(
            controller: confirmpasswordController,
            decoration: InputDecoration(
                hintText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(18),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(minimumSize: Size(500, 50)),
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 18),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

signIn() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text('Already have an account?'),
      TextButton(
        onPressed: () {},
        child: Text('Sign in'),
      )
    ],
  );
}