import 'package:flutter/material.dart';
import 'package:job_search_ui/components/photo_profile.dart';
import 'package:job_search_ui/components/profile_field_row.dart';
import 'package:job_search_ui/components/profile_section_title.dart';
import 'package:job_search_ui/components/step_progress.dart';
import 'package:job_search_ui/views/home.dart';

class ReviewInformation extends StatefulWidget {
  final String companyName;
  const ReviewInformation({super.key, required this.companyName});

  @override
  State<ReviewInformation> createState() => _ReviewInformationState();
}

class _ReviewInformationState extends State<ReviewInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Apply To ${widget.companyName}',
                    style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Autour One'),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: StepProgress(
                      title: 'Review Information',
                      step: 3,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileSectionTitle(title: 'Contact Info'),
                          Center(
                            child: PhotoProfile(
                              size: 80,
                              addButton: false,
                              verticalMargin: 8,
                            ),
                          ),
                          ProfileFieldRow(
                              label: 'Full Name', value: 'Adrian Severin'),
                          ProfileFieldRow(
                              label: 'Email', value: 'adrianseverin@gmail.com'),
                          ProfileFieldRow(
                              label: 'Mobile Number', value: '+6532823232'),
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
                          ProfileFieldRow(
                            label: 'Additional Skills',
                            custom: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 12),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Text(
                                'Figma',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: const Text(
                    'Proceed',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
