import 'package:flutter/material.dart';
import 'package:job_search_ui/utils/colors.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Email',
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 8, left: 12),
                  hintText: "example@mail.com",
                  hintStyle: const TextStyle(color: light),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Password',
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                obscureText: !showPassword,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 8, left: 12),
                    hintText: "•••••••••••",
                    hintStyle: const TextStyle(color: light),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      child: Icon(
                        showPassword ? Icons.visibility_off : Icons.visibility,
                        color: light,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
