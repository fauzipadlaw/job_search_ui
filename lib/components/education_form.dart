import 'package:flutter/material.dart';
import 'package:job_search_ui/utils/colors.dart';

class EducationForm extends StatelessWidget {
  const EducationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Name of School',
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 8, left: 12),
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
            'Course of Study',
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 8, left: 12),
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
            'Year Graduated',
          ),
          const SizedBox(
            height: 6,
          ),
          SizedBox(
            height: 50,
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 8, left: 12),
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
            height: 6,
          ),
        ],
      ),
    );
  }
}
