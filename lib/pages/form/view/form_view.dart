import 'package:flutter/material.dart';
import 'package:fresume_app/pages/form/widget/education_history.dart';
import 'package:fresume_app/pages/form/widget/employment_history.dart';
import 'package:fresume_app/pages/form/widget/extra_curriculars.dart';
import 'package:fresume_app/pages/form/widget/languages.dart';
import 'package:fresume_app/pages/form/widget/links.dart';
import 'package:fresume_app/pages/form/widget/personal_details.dart';
import 'package:fresume_app/pages/form/widget/profile_summary.dart';
import 'package:fresume_app/pages/form/widget/skills.dart';

class FormSide extends StatefulWidget {
  const FormSide({Key? key}) : super(key: key);

  @override
  State<FormSide> createState() => _FormSideState();
}

class _FormSideState extends State<FormSide> {
  String? name;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            PersonalDetails(),
            SizedBox(height: 8),
            ProfileSummary(),
            SizedBox(height: 8),
            LinksInfo(),
            SizedBox(height: 8),
            EmploymentHistory(),
            SizedBox(height: 8),
            EducationHistory(),
            SizedBox(height: 8),
            SkillsInfo(),
            SizedBox(height: 8),
            Extracurriculars(),
            SizedBox(height: 8),
            LanguagesInfo(),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
