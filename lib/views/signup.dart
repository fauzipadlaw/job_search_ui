import 'package:flutter/material.dart';
import 'package:job_search_ui/components/signup_form.dart';
import 'package:job_search_ui/utils/colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Sign Up',
        style: TextStyle(
          fontFamily: 'Autour One',
        ),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 40, bottom: 30),
                height: 80,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 1),
                ),
                child: const Text(
                  'Add\nPhoto',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: SignUpForm(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => {},
                      child: const Text(
                        'Create Account',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: yellow,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 150, bottom: 20),
              child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    children: [
                      TextSpan(
                          text:
                              "By creating an account, you agree to Koko's\n"),
                      TextSpan(
                        text: "Terms of Use",
                        style: TextStyle(color: yellow),
                      ),
                      TextSpan(text: " and "),
                      TextSpan(
                          text: "Privacy and Policy",
                          style: TextStyle(color: yellow)),
                      TextSpan(text: "."),
                    ],
                  ),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
