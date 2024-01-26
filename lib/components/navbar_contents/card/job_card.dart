import 'package:flutter/material.dart';
import 'package:job_search_ui/utils/colors.dart';

class JobCard extends StatelessWidget {
  final Map<String, dynamic> job;
  const JobCard({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      padding: const EdgeInsets.all(20),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                job['companyName'],
                style: const TextStyle(
                    fontSize: 16, color: yellow, fontWeight: FontWeight.bold),
              ),
              Text(
                job['date'],
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            job['position'],
            style: const TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text.rich(
            TextSpan(
              style: const TextStyle(fontSize: 16, color: Colors.black38),
              children: [
                const WidgetSpan(
                  child: Icon(
                    Icons.monetization_on,
                    color: Colors.black38,
                    size: 18,
                  ),
                ),
                TextSpan(text: " ${job['salary']}"),
                TextSpan(text: "  ${job['location']}")
              ],
            ),
          )
        ],
      ),
    );
  }
}
