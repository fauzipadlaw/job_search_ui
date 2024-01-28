import 'package:flutter/material.dart';
import 'package:job_search_ui/utils/colors.dart';

class StepProgress extends StatelessWidget {
  final int step;
  final String title;
  const StepProgress({super.key, required this.step, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: yellow),
        ),
        const SizedBox(
          height: 4,
        ),
        LinearProgressIndicator(
          value: step / 3,
          borderRadius: BorderRadius.circular(16),
          color: yellow,
        ),
      ],
    );
  }
}
