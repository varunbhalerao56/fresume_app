import 'package:flutter/material.dart';
import 'package:fresume_app/global/theme/pallete.dart';
import 'package:fresume_app/global/theme/theme.dart';

class CustomTextTile extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final String text;

  const CustomTextTile({Key? key, required this.onTap, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Row(
            children: [
              Text(
                text,
                style: subtitle14.copyWith(color: Pallete.primaryColor, fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
