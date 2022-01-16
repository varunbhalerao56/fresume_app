import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fresume_app/apis/auth.dart';
import 'package:fresume_app/apis/resume.dart';
import 'package:fresume_app/global/functions/since_time.dart';
import 'package:fresume_app/global/models/pdf_model.dart';
import 'package:fresume_app/global/models/pdf_model_data.dart';
import 'package:fresume_app/global/templates/template_personal.dart';
import 'package:fresume_app/global/theme/pallete.dart';
import 'package:fresume_app/global/theme/theme.dart';
import 'package:fresume_app/global/widgets/buttons.dart';
import 'package:fresume_app/global/widgets/loading.dart';
import 'package:fresume_app/global/widgets/shape.dart';
import 'package:fresume_app/pages/form/controller/form_controller.dart';
import 'package:fresume_app/pages/form/controller/resume_controller.dart';
import 'package:fresume_app/pages/form/view/form_view.dart';
import 'package:fresume_app/pages/form/view/pdf_view.dart';
import 'package:fresume_app/pages/unknown/not_logged_in.dart';
import 'package:fresume_app/pages/unknown/unknown_route.dart';
import 'package:get/get.dart';
import 'package:printing/printing.dart';

class ResumeEdit extends ConsumerStatefulWidget {
  final String? uid;
  const ResumeEdit(this.uid, {Key? key}) : super(key: key);

  @override
  _ResumeEditState createState() => _ResumeEditState();
}

class _ResumeEditState extends ConsumerState<ResumeEdit> with AutomaticKeepAliveClientMixin {
  late Timer timer;

  Future updateResume() async {
    PdfModel _pdfProvider = ref.read(pdfProvider);
    PdfModel _tempPdfProvider = ref.read(tempPdfProvider);
    PdfModelApi? _resumeApi = ref.watch(resumeApi);

    if (widget.uid != null && _tempPdfProvider != _pdfProvider && _resumeApi != null) {
      DateTime dateTime = DateTime.now();
      PdfModel pdfModel = _pdfProvider.copyWith(lastUpdated: dateTime);

      await _resumeApi.setPdfModel(_pdfProvider.pdfId, pdfModel);
      ref.watch(pdfProvider.notifier).editPdf(pdfModel);
      ref.watch(tempPdfProvider.notifier).state = pdfModel;
    }
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 30), (timer) async {
      updateResume();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

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
        if (widget.uid != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: SimpleOutlinedButton(
                onPressed: () async {
                  try {
                    DateTime dateTime = DateTime.now();
                    PdfModel pdfModel = ref.watch(pdfProvider).copyWith(lastUpdated: dateTime);
                    await ref.watch(resumeController(widget.uid!).notifier).addToResume(pdfModel: pdfModel);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                      'Your resume was saved!',
                      style: bodyText14.copyWith(color: Pallete.backgroundColor),
                    )));
                  } catch (e) {
                    log(e.toString());
                  }
                },
                text: 'Save (' + timeAgoSinceDate(ref.watch(pdfProvider).lastUpdated) + ")"),
          ),
      ];
    }

    AppBar resumeAppbar() {
      return AppBar(
        iconTheme: const IconThemeData(color: Pallete.primaryColor),
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              if (widget.uid == null) {
                Get.offAndToNamed('/');
              } else {
                Get.offAndToNamed('home');
              }
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Pallete.primaryColor,
            )),
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

class ResumeEditWrapper extends ConsumerStatefulWidget {
  const ResumeEditWrapper({Key? key}) : super(key: key);

  @override
  _ResumeEditWrapperState createState() => _ResumeEditWrapperState();
}

class _ResumeEditWrapperState extends ConsumerState<ResumeEditWrapper> {
  @override
  Widget build(BuildContext context) {
    String? id = Get.parameters['resumeId'];

    return ref.watch(authStateChangeProvider).when(data: (data) {
      if (data != null && id != null) {
        return FutureBuilder<PdfModel>(
          future: PdfModelApi(data.uid, ref.watch(firebaseFirestoreProvider)).getSinglePdf(id),
          builder: (BuildContext context, AsyncSnapshot<PdfModel> snapshot) {
            WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
              if (snapshot.hasData) {
                if (snapshot.data!.pdfId == id) {
                  ref.watch(pdfProvider.notifier).editPdf(snapshot.data!);
                  ref.watch(tempPdfProvider.notifier).state = snapshot.data!;
                }
              }
            });

            if (snapshot.hasData && snapshot.data!.pdfId == id) return ResumeEdit(data.uid);
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Container();
            }
            return const UnknownRoute();
          },
        );
      }

      return const NoLoginRoute();
    }, loading: () {
      return progressWidget(context);
    }, error: (e, s) {
      throw (e);
    });
  }
}
