import 'package:flutter/material.dart';
import 'package:job_search_ui/components/navbar_contents/job_listings_header.dart';
import 'package:job_search_ui/components/navbar_contents/recent_jobs.dart';
import 'package:job_search_ui/utils/colors.dart';

class JobListings extends StatelessWidget {
  const JobListings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const JobListingsHeader(),
        Container(
          color: plainBackground,
          height: MediaQuery.of(context).size.height - 295,
          child: const DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                  dividerColor: plainBackground,
                  labelColor: yellow,
                  unselectedLabelColor: Colors.black38,
                  indicatorColor: yellow,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  tabs: [
                    Tab(
                      text: 'Recent Jobs',
                    ),
                    Tab(
                      text: 'Near You',
                    )
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      RecentJobs(),
                      RecentJobs(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
