import 'package:flutter/material.dart';
import 'package:job_search_ui/components/navbar_contents/card/job_card.dart';
import 'package:job_search_ui/utils/json.dart';

class AppliedJobsList extends StatelessWidget {
  const AppliedJobsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(3, (index) => JobCard(job: jobsList[index], applied: true)),
      ),
    );
  }
}
