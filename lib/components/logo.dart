import 'package:flutter/material.dart';
import 'package:job_search_ui/utils/colors.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        style: TextStyle(
          fontFamily: 'Autour One',
          fontSize: 38,
        ),
        children: [
          TextSpan(
            text: "Job",
            style: TextStyle(
              color: yellow,
            ),
          ),
          TextSpan(
            text: "box",
            style: TextStyle(
              color: brown,
            ),
          ),
        ],
      ),
    );
  }
}
