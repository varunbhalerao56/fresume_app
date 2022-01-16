import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fresume_app/global/functions/since_time.dart';
import 'package:fresume_app/pages/unknown/not_logged_in.dart';
import 'package:get/get.dart';
import 'package:fresume_app/apis/auth.dart';
import 'package:fresume_app/global/models/pdf_model.dart';
import 'package:fresume_app/global/theme/pallete.dart';
import 'package:fresume_app/global/theme/theme.dart';
import 'package:fresume_app/global/widgets/buttons.dart';
import 'package:fresume_app/global/widgets/loading.dart';
import 'package:fresume_app/global/widgets/shape.dart';
import 'package:fresume_app/pages/form/controller/resume_controller.dart';

class LoggedHomeAuthView extends ConsumerWidget {
  const LoggedHomeAuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return ref.watch(authStateChangeProvider).when(data: (data) {
      if (data != null) {
        return Scaffold(body: Center(child: LayoutBuilder(
          builder: (context, size) {
            if (size.maxWidth > 750) {
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                  width: 850,
                  height: 600,
                  child: Card(
                    elevation: 8,
                    shape: Shape.roundedRectangleBorderAll(20),
                    shadowColor: Colors.black.withOpacity(0.4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        AccountWeb(data),
                        ResumeList(data, false),
                      ],
                    ),
                  ),
                ),
              );
            }

            return Scaffold(
              backgroundColor: Pallete.backgroundColor,
              appBar: AppBar(
                backgroundColor: Pallete.primaryLightColor,
                elevation: 0,
                centerTitle: false,
                title: Text(
                  'YOUR FRESUME ACCOUNT',
                  style: headline20.copyWith(color: Pallete.primaryColor, fontWeight: FontWeight.bold),
                ),
              ),
              body: Column(
                children: [
                  Container(
                    color: Pallete.primaryLightColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: UserInformation(data),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ResumeList(data, true),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )));
      }

      return const NoLoginRoute();
    }, loading: () {
      return progressWidget(context);
    }, error: (e, s) {
      throw (e);
    });
  }
}

class AccountWeb extends ConsumerWidget {
  final User user;
  const AccountWeb(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      color: Pallete.primaryLightColor,
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                'YOUR FRESUME ACCOUNT'.toUpperCase(),
                style: headline20.copyWith(color: Pallete.primaryColor, fontWeight: FontWeight.bold),
              ),
            ),
            UserInformation(user),
          ],
        ),
      ),
    );
  }
}

class UserInformation extends ConsumerWidget {
  const UserInformation(
    this.user, {
    Key? key,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context, ref) {
    String? profilePic = user.photoURL;
    bool isPicNull = profilePic == null;
    String? email = user.email;
    String? name = user.displayName;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: Shape.roundedShapeAll(10),
            image: DecorationImage(
              image: NetworkImage(profilePic!),
              fit: BoxFit.contain,
            ),
          ),
          child: isPicNull == true
              ? Center(
                  child: Text(
                    email!.substring(0, 1).toUpperCase(),
                    style: headline60.copyWith(color: Pallete.primaryColor),
                  ),
                )
              : null,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name!,
              style: subtitle14.copyWith(color: Pallete.primaryColor, fontWeight: FontWeight.bold),
            ),
            Text(
              email!,
              style: subtitle14.copyWith(color: Pallete.primaryColor, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const Spacer(),
        SimpleOutlinedButton(
            color: Pallete.errorColor,
            backgroundColor: Pallete.primaryLightColor,
            onPressed: () async {
              await ref.read(authApiProvider).signOut();
              Get.offAndToNamed('/');
            },
            text: 'Sign out'),
      ],
    );
  }
}

class ResumeList extends ConsumerWidget {
  final bool useMobileLayout;
  final User user;
  const ResumeList(this.user, this.useMobileLayout, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      color: Pallete.backgroundColor,
      child: Padding(
        padding: useMobileLayout ? const EdgeInsets.all(16.0) : const EdgeInsets.all(36.0),
        child: ref.watch(resumeController(user.uid)).when(data: (resumes) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Your Resumes'.toUpperCase(),
                    style: headline20.copyWith(color: Pallete.primaryColor, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(
                    color: resumes.length >= 3 ? Colors.grey.shade400 : Pallete.primaryColor,
                    onPressed: () async {
                      if (resumes.length >= 3) {
                      } else {
                        ref.watch(resumeController(user.uid).notifier).addToResume(
                              pdfModel: PdfModel.createEmpty().copyWith(
                                resumePersonal: Personal(firstName: user.displayName, email: user.email),
                              ),
                            );
                      }
                    },
                    icon: const Icon(Icons.add_circle),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 275,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 16,
                    );
                  },
                  itemBuilder: (context, index) {
                    return AddResumeWidget(
                      pdfModel: resumes[index],
                      uid: user.uid,
                    );
                  },
                  itemCount: resumes.length,
                ),
              ),
            ],
          );
        }, loading: () {
          return progressWidget(context);
        }, error: (e, s) {
          throw (e);
        }),
      ),
    );
  }
}

class AddResumeWidget extends ConsumerWidget {
  final String uid;
  final PdfModel pdfModel;
  const AddResumeWidget({
    Key? key,
    required this.pdfModel,
    required this.uid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: Shape.roundedShapeAll(10),
            border: Border.all(color: Pallete.secondaryBackgroundColor, width: 1.5)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(pdfModel.resumePersonal!.firstName!,
                      style: subtitle14.copyWith(color: Pallete.textColor, fontWeight: FontWeight.bold)),
                  Text('Last saved ' + timeAgoSinceDate(pdfModel.lastUpdated),
                      style: subtitle14.copyWith(color: Colors.grey.shade400)),
                ],
              ),
              const Spacer(),
              SimpleOutlinedButton(
                  color: Pallete.errorColor,
                  onPressed: () async {
                    await ref.watch(resumeController(uid).notifier).deleteFromResume(pdfModel: pdfModel);
                  },
                  text: 'Delete'),
              const SizedBox(
                width: 16,
              ),
              SimpleOutlinedButton(
                  color: Pallete.primaryColor,
                  onPressed: () async {
                    Get.toNamed('/resume/${pdfModel.pdfId}');
                  },
                  text: 'Edit'),
            ],
          ),
        ));
  }
}
