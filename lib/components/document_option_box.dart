import 'package:flutter/material.dart';
import 'package:job_search_ui/utils/colors.dart';

class DocumentOptionBox extends StatelessWidget {
  final bool selected;
  final String documentName;
  final String documentDate;
  const DocumentOptionBox({
    super.key,
    this.selected = false,
    required this.documentName,
    required this.documentDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: selected ? yellow : yellowDisable,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: yellow,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.insert_drive_file,
            color: selected ? Colors.white : yellow,
            size: 40,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                documentName,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: selected ? Colors.white : yellow),
              ),
              Text(
                documentDate,
                style: TextStyle(color: selected ? Colors.white : yellow),
              )
            ],
          ),
        ],
      ),
    );
  }
}
