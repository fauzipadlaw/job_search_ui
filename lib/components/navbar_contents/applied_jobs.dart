import 'package:flutter/material.dart';
import 'package:job_search_ui/components/navbar_contents/applied_jobs_list.dart';
import 'package:job_search_ui/utils/json.dart';

class AppliedJobs extends StatelessWidget {
  const AppliedJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Your Applied Jobs',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Autour One',
                  fontSize: 22,
                ),
              ),
              Icon(
                Icons.edit,
                size: 35,
              )
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "You applied for ${jobsList.length} jobs",
              style: const TextStyle(
                color: Colors.black45,
              ),
            ),
          ),
          const Expanded(child: AppliedJobsList())
        ],
      ),
    );
  }
}
