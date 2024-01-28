import 'package:flutter/material.dart';
import 'package:job_search_ui/components/apply_document_section.dart';
import 'package:job_search_ui/components/document_option_box.dart';
import 'package:job_search_ui/components/step_progress.dart';
import 'package:job_search_ui/views/apply/education_experience.dart';

class DocumentApplication extends StatefulWidget {
  final String companyName;
  const DocumentApplication({super.key, required this.companyName});

  @override
  State<DocumentApplication> createState() => _DocumentApplicationState();
}

class _DocumentApplicationState extends State<DocumentApplication> {
  int _selectedResume = 0;
  int _selectedCoverLetter = 0;
  final List<Map<String, dynamic>> _resume = [
    {'name': 'My Resume.pdf', 'date': '10/06/20'},
  ];
  final List<Map<String, dynamic>> _coverLetter = [
    {'name': 'My cover letter final.pdf', 'date': '10/06/20'},
    {'name': 'My cover letter.pdf', 'date': '10/06/20'},
  ];

  void _onTapResume(int i) {
    setState(() {
      if (_selectedResume == i) {
        _selectedResume = -1;
      } else {
        _selectedResume = i;
      }
    });
  }

  void _onTapCoverLetter(int i) {
    setState(() {
      if (_selectedCoverLetter == i) {
        _selectedCoverLetter = -1;
      } else {
        _selectedCoverLetter = i;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.close,
            size: 28,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
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
                    title: 'Uploading of Documents',
                    step: 1,
                  ),
                ),
                const ApplyDocumentSection(
                  title: 'Resume',
                  subTitle: 'Remember to include your most updated resume',
                ),
                ...List.generate(_resume.length, (index) {
                  return InkWell(
                    onTap: () {
                      _onTapResume(index);
                    },
                    child: DocumentOptionBox(
                      documentDate: _resume[index]['date'] ?? '',
                      documentName: _resume[index]['name'] ?? '',
                      selected: _selectedResume == index,
                    ),
                  );
                }),
                const ApplyDocumentSection(
                  title: 'Cover Letter',
                  subTitle: 'Stand out with your cover letter',
                ),
                ...List.generate(_coverLetter.length, (index) {
                  return InkWell(
                    onTap: () {
                      _onTapCoverLetter(index);
                    },
                    child: DocumentOptionBox(
                      documentDate: _coverLetter[index]['date'] ?? '',
                      documentName: _coverLetter[index]['name'] ?? '',
                      selected: _selectedCoverLetter == index,
                    ),
                  );
                }),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EducationExperience(
                              companyName: widget.companyName,
                            )));
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
