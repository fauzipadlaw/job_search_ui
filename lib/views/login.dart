import 'package:flutter/material.dart';
import 'package:job_search_ui/components/login_form.dart';
import 'package:job_search_ui/components/logo.dart';
import 'package:job_search_ui/utils/colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 100),
        alignment: Alignment.center,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 80),
              child: Logo(),
            ),
            const LoginForm(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => {},
                      child: const Text(
                        'Login',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(fontSize: 16),
                ),
                TextButton(
                    onPressed: () => {},
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: yellow,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
