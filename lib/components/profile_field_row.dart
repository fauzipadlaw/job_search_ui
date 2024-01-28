// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProfileFieldRow extends StatelessWidget {
  final String label;
  final String? value;
  final String? documentDate;
  final Widget? custom;
  const ProfileFieldRow({
    Key? key,
    required this.label,
    this.value,
    this.documentDate,
    this.custom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Colors.black38,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          if (custom != null) custom ?? Container(),
          if (documentDate != null && custom == null)
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Transform.translate(
                  offset: const Offset(-5.0, 0.0),
                  child: const Icon(
                    Icons.insert_drive_file,
                    size: 40,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      value ?? '',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(documentDate ?? '')
                  ],
                )
              ],
            ),
          if (documentDate == null && custom == null)
            Text(
              value ?? '',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
        ],
      ),
    );
  }
}
