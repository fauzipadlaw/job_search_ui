import 'package:flutter/material.dart';
import 'package:job_search_ui/utils/colors.dart';

class ApplyEduXpSection extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool swithed;
  final Function(bool)? onChanged;
  const ApplyEduXpSection(
      {super.key,
      required this.title,
      required this.subTitle,
      this.swithed = false,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subTitle,
                style: const TextStyle(fontSize: 13),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Switch(
                  value: swithed,
                  onChanged: onChanged,
                  activeColor: yellow,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
