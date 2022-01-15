import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fresume_app/global/functions/return_correct_string.dart';
import 'package:fresume_app/global/models/pdf_model.dart';
import 'package:fresume_app/global/theme/pallete.dart';
import 'package:fresume_app/global/theme/theme.dart';
import 'package:fresume_app/global/widgets/buttons.dart';
import 'package:fresume_app/global/widgets/expansion.dart';
import 'package:fresume_app/global/widgets/textfield.dart';
import 'package:fresume_app/pages/form/controller/form_controller.dart';

class Extracurriculars extends ConsumerWidget {
  const Extracurriculars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final _pdfProvider = ref.watch(pdfProvider);

    List<Section> activityList = _pdfProvider.activities!;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
              top: 10,
            ),
            child: Text(
              'Extra-curricular activities',
              style: headline20.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  key: Key(activityList[index].sectionId),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: ActivityFullWidget(
                    section: activityList[index],
                    onPressed: () {
                      ref.read(pdfProvider.notifier).removeActivitySection(activityList[index]);
                    },
                  ),
                );
              },
              itemCount: activityList.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SimpleElevatedButton(
                buttonWidth: double.infinity,
                onPressed: () {
                  ref.read(pdfProvider.notifier).addActivitySection(Section.createEmpty());
                },
                text: 'Add another activity'),
          )
        ],
      ),
    );
  }
}

class ActivityFullWidget extends ConsumerStatefulWidget {
  const ActivityFullWidget({
    Key? key,
    required this.section,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;
  final Section section;

  @override
  _SectionFullWidgetState createState() => _SectionFullWidgetState();
}

class _SectionFullWidgetState extends ConsumerState<ActivityFullWidget> {
  TextEditingController jobController = TextEditingController();
  TextEditingController employerController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      setState(() {
        if (checkChangeText(jobController.text, widget.section.textOne)) {
          jobController.text = widget.section.textOne ?? "";
        }
        if (checkChangeText(employerController.text, widget.section.textTwo)) {
          employerController.text = widget.section.textTwo ?? "";
        }
        if (checkChangeText(cityController.text, widget.section.textThree)) {
          cityController.text = widget.section.textThree ?? "";
        }
        if (checkChangeText(startDateController.text, widget.section.startDate)) {
          startDateController.text = widget.section.startDate ?? "";
        }
        if (checkChangeText(endDateController.text, widget.section.endDate)) {
          endDateController.text = widget.section.endDate ?? "";
        }
        if (checkChangeText(descriptionController.text, widget.section.description)) {
          descriptionController.text = widget.section.description ?? "";
        }
      });
    });

    return BorderedExpansionTile(
      title: widget.section.textOne ?? "Test",
      children: [
        Row(
          children: [
            Flexible(
              child: RectBorderFormField(
                textEditingController: jobController,
                labelText: 'Function Title',
                onTextChanged: (val) {
                  ref.read(pdfProvider.notifier).editActivitySection(widget.section.copyWith(textOne: val));
                },
              ),
            ),
            Flexible(
              child: RectBorderFormField(
                textEditingController: employerController,
                labelText: 'Employer',
                onTextChanged: (val) {
                  ref.read(pdfProvider.notifier).editActivitySection(widget.section.copyWith(textTwo: val));
                },
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: Row(
                children: [
                  Flexible(
                    child: RectBorderFormField(
                      textEditingController: startDateController,
                      labelText: 'Start Date',
                      onTextChanged: (val) {
                        ref.read(pdfProvider.notifier).editActivitySection(widget.section.copyWith(startDate: val));
                      },
                    ),
                  ),
                  Flexible(
                    child: RectBorderFormField(
                      textEditingController: endDateController,
                      labelText: 'End Date',
                      onTextChanged: (val) {
                        ref.read(pdfProvider.notifier).editActivitySection(widget.section.copyWith(endDate: val));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: RectBorderFormField(
                textEditingController: cityController,
                labelText: 'City',
                onTextChanged: (val) {
                  ref.read(pdfProvider.notifier).editActivitySection(widget.section.copyWith(textThree: val));
                },
              ),
            ),
          ],
        ),
        RectBorderFormField(
          maxLines: 9,
          maxLength: 500,
          labelText: "Description",
          textEditingController: descriptionController,
          onTextChanged: (val) {
            ref.read(pdfProvider.notifier).editActivitySection(widget.section.copyWith(description: val));
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SimpleOutlinedButton(
              color: Pallete.errorColor,
              buttonWidth: double.infinity,
              onPressed: () => widget.onPressed(),
              text: 'Remove this activity'),
        )
      ],
    );
  }
}
