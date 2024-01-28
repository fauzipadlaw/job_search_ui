import 'package:flutter/material.dart';
import 'package:job_search_ui/components/photo_profile.dart';
import 'package:job_search_ui/components/profiel_field_row.dart';
import 'package:job_search_ui/components/profile_section_title.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                'Your Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Autour One',
                  fontSize: 22,
                ),
              ),
              Icon(
                Icons.person,
                size: 35,
              )
            ],
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: PhotoProfile(),
            ),
            ProfileSectionTitle(title: 'Contact Info'),
            ProfileFieldRow(label: 'Full Name', value: 'Adrian Severin'),
            ProfileFieldRow(label: 'Email', value: 'adrianseverin@gmail.com'),
            ProfileFieldRow(label: 'Mobile Number', value: '+6532823232'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            ProfileSectionTitle(title: 'Employment Information'),
            ProfileFieldRow(
              label: 'Resume',
              value: 'My Resume.pdf',
              documentDate: '11/06/20',
            ),
            ProfileFieldRow(
              label: 'Cover Letter',
              value: 'My cover letter final.pdf',
              documentDate: '11/06/20',
            ),
          ],
        ),
      ),
    );
  }
}
