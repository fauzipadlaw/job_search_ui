import 'package:flutter/material.dart';

class ProfileFieldRow extends StatelessWidget {
  final String label;
  final String value;
  final String? documentDate;
  const ProfileFieldRow({
    super.key,
    required this.label,
    required this.value,
    this.documentDate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
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
          if (documentDate != null)
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
                      value,
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
          if (documentDate == null)
            Text(
              value,
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
