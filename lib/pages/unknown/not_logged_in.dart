import 'package:flutter/material.dart';
import 'package:fresume_app/global/theme/pallete.dart';
import 'package:fresume_app/global/theme/theme.dart';
import 'package:get/get.dart';

class NoLoginRoute extends StatelessWidget {
  const NoLoginRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                Icons.error,
                color: Pallete.errorColor,
                size: 48,
              ),
            ),
            SizedBox(
              width: 250,
              child: Text(
                'You need to be logged in to access this page.',
                style: bodyText16,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 250,
                child: GestureDetector(
                  onTap: () {
                    Get.offNamed('/');
                  },
                  child: Text(
                    '>> Go to login',
                    style: bodyText16.copyWith(decoration: TextDecoration.underline),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
