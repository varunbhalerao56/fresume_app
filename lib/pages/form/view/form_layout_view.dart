import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fresume_app/apis/auth.dart';
import 'package:fresume_app/global/models/pdf_model_data.dart';
import 'package:fresume_app/global/templates/template_personal.dart';
import 'package:fresume_app/global/theme/pallete.dart';
import 'package:fresume_app/global/theme/theme.dart';
import 'package:fresume_app/global/widgets/buttons.dart';
import 'package:fresume_app/global/widgets/shape.dart';
import 'package:fresume_app/pages/form/controller/form_controller.dart';
import 'package:fresume_app/pages/form/controller/resume_controller.dart';
import 'package:fresume_app/pages/form/view/form_view.dart';
import 'package:fresume_app/pages/form/view/pdf_view.dart';
import 'package:get/get.dart';

import 'package:printing/printing.dart';

class ResumeEdit extends ConsumerStatefulWidget {
  const ResumeEdit({Key? key}) : super(key: key);

  @override
  _ResumeEditState createState() => _ResumeEditState();
}

class _ResumeEditState extends ConsumerState<ResumeEdit> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    List<Widget> actionButton() {
      return [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: SimpleOutlinedButton(
              onPressed: () async {
                ref.read(pdfProvider.notifier).editPdf(pdfModelData);
              },
              text: 'Fill'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: SimpleOutlinedButton(
              onPressed: () async {
                await Printing.sharePdf(
                    bytes: await generateDocument(context, pdfModel: ref.read(pdfProvider)), filename: 'resume.pdf');
              },
              text: 'Download'),
        ),
        ref.watch(authStateChangeProvider).when(data: (snapshot) {

          WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
            if (snapshot != null && ref.watch(pdfProvider).pdfId == 'noSave') {
              Get.offAndToNamed('/home');
            }
          });

          if (snapshot == null) {
            return Container();
          }

          // Render your application if authenticated
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: SimpleOutlinedButton(
                onPressed: () async {
                  try {
                    await ref
                        .watch(resumeController(snapshot.uid).notifier)
                        .addToResume(pdfModel: ref.watch(pdfProvider));
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                      'Your resume was saved!',
                      style: bodyText14.copyWith(color: Pallete.backgroundColor),
                    )));
                  } catch (e) {
                    log(e.toString());
                  }
                },
                text: 'Save'),
          );
        }, loading: () {
          return Container();
        }, error: (e, s) {
          throw (e);
        }),
      ];
    }

    AppBar resumeAppbar() {
      return AppBar(
        iconTheme: const IconThemeData(color: Pallete.primaryColor),
        centerTitle: false,
        title: Text(
          'FRESUME',
          style: headline20.copyWith(
              color: Pallete.primaryColor, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
        backgroundColor: Pallete.backgroundColor,
        shadowColor: Colors.black.withOpacity(0.3),
        elevation: 8,
      );
    }

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 900) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
              backgroundColor: Pallete.primaryLightColor,
              appBar: AppBar(
                backgroundColor: Pallete.backgroundColor,
                iconTheme: const IconThemeData(color: Pallete.primaryColor),
                centerTitle: false,
                title: Text(
                  'FRESUME',
                  style: headline20.copyWith(
                      color: Pallete.primaryColor, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                ),
                bottom: TabBar(
                  labelStyle: subtitle14.copyWith(color: Pallete.primaryColor),
                  labelColor: Pallete.primaryColor,
                  unselectedLabelColor: Colors.grey.shade400,
                  unselectedLabelStyle: subtitle14.copyWith(color: Colors.grey.shade400),
                  tabs: const [
                    Tab(
                      text: 'Edit',
                    ),
                    Tab(
                      text: 'Preview',
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Center(
                      child: Container(
                    height: double.infinity,
                    color: Pallete.backgroundColor,
                    child: const FormSide(),
                  )),
                  Scaffold(
                    backgroundColor: Pallete.primaryLightColor,
                    body: const PdfDisplay(true),
                    bottomNavigationBar: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Pallete.backgroundColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        borderRadius: Shape.roundedShapeOnly(topLeft: 20, topRight: 20),
                      ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: actionButton()),
                    ),
                  ),
                ],
              )),
        );
      } else {
        return Scaffold(
          backgroundColor: Pallete.primaryLightColor,
          appBar: resumeAppbar(),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                  child: Container(
                constraints: const BoxConstraints(maxWidth: 850),
                height: double.infinity,
                color: Pallete.backgroundColor,
                child: const FormSide(),
              )),
              Flexible(
                  child: Center(
                child: Scaffold(
                  backgroundColor: Pallete.primaryLightColor,
                  body: const PdfDisplay(false),
                  bottomNavigationBar: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Pallete.backgroundColor,
                      borderRadius: Shape.roundedShapeOnly(topRight: 20),
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: actionButton()),
                  ),
                ),
              )),
            ],
          ),
        );
      }
    });
  }
}
