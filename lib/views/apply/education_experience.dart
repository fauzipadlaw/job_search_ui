import 'package:flutter/material.dart';
import 'package:job_search_ui/components/apply_edu_xp_section.dart';
import 'package:job_search_ui/components/education_form.dart';
import 'package:job_search_ui/components/step_progress.dart';
import 'package:job_search_ui/utils/colors.dart';
import 'package:job_search_ui/views/apply/review_information.dart';

class EducationExperience extends StatefulWidget {
  final String companyName;
  const EducationExperience({super.key, required this.companyName});

  @override
  State<EducationExperience> createState() => _EducationExperienceState();
}

class _EducationExperienceState extends State<EducationExperience> {
  bool _educationIncluded = false;
  bool _experienceIncluded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    title: 'Employment Information',
                    step: 2,
                  ),
                ),
                ApplyEduXpSection(
                  title: 'Education',
                  subTitle: 'Included in Resume',
                  swithed: _educationIncluded,
                  onChanged: (bool value) {
                    setState(() {
                      _educationIncluded = value;
                    });
                  },
                ),
                const EducationForm(),
                ApplyEduXpSection(
                  title: 'Work Experience',
                  subTitle: 'Included in Resume',
                  swithed: _experienceIncluded,
                  onChanged: (bool value) {
                    setState(() {
                      _experienceIncluded = value;
                    });
                  },
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    'Additional Skills',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 8, left: 12),
                      hintStyle: const TextStyle(color: light),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: light,
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ReviewInformation(
                        companyName: widget.companyName,
                      ),
                    ));
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
