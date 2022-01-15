import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fresume_app/global/theme/pallete.dart';
import 'package:fresume_app/global/theme/theme.dart';

class RectBorderFormField extends StatelessWidget {
  final bool? obscureText;
  final IconData? prefixIcon;
  final TextInputType? textInputType;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final Widget? suffix;
  final String? labelText;
  final String? Function(String?)? validator;
  final TextEditingController textEditingController;
  final String? initialValue;
  final String? hintText;
  final Function(String)? onTextChanged;

  const RectBorderFormField(
      {Key? key,
      this.obscureText,
      this.prefixIcon,
      this.textInputType,
      this.maxLength,
      this.inputFormatters,
      this.maxLines,
      this.suffix,
      this.validator,
     required this.textEditingController,
      this.initialValue,
      this.hintText,
      this.onTextChanged,
      this.labelText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                labelText!,
                style: subtitle14.copyWith(color: Colors.grey.shade600),
              ),
            ),
          TextFormField(
            // style: const TextStyle(backgroundColor: Pallete.primaryLightColor),
            obscureText: obscureText ?? false,
    controller: textEditingController ,
            maxLines: maxLines ?? 1,
            autocorrect: false,
            inputFormatters: inputFormatters ?? [],
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: textInputType ?? TextInputType.text,
            onChanged: (value) {
              if (onTextChanged != null) onTextChanged!(value);
            },
            maxLength: maxLength,
            decoration: InputDecoration(
              suffix: suffix,
              contentPadding: const EdgeInsets.all(14),
              labelStyle: const TextStyle(color: Pallete.primaryColor, backgroundColor: Colors.transparent),
              isDense: true,
              prefixIcon: prefixIcon != null
                  ? Icon(
                      prefixIcon,
                      color: Pallete.primaryColor,
                      size: 26,
                    )
                  : null,
              prefixIconConstraints: const BoxConstraints(
                minHeight: 50,
                minWidth: 50,
              ),
              counterText: "",
              hintText: hintText,
              hintStyle: const TextStyle(
                  color: Pallete.primaryMidColor, backgroundColor: Pallete.primaryLightColor, fontSize: 14),
              filled: true,
              fillColor: Pallete.primaryLightColor,
              hoverColor: Pallete.primaryLightColor,
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red.shade900, width: 1.5),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(2),
                      bottomRight: Radius.circular(2),
                      bottomLeft: Radius.circular(2),
                      topRight: Radius.circular(2))),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red.shade900, width: 1),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(2),
                      bottomRight: Radius.circular(2),
                      bottomLeft: Radius.circular(2),
                      topRight: Radius.circular(2))),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2),
                      bottomRight: Radius.circular(2),
                      bottomLeft: Radius.circular(2),
                      topRight: Radius.circular(2))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent, width: 0),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(2),
                      bottomRight: Radius.circular(2),
                      bottomLeft: Radius.circular(2),
                      topRight: Radius.circular(2))),
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldStyle {
  static primaryColorStyle({Widget? suffix, IconData? prefixIcon, required String hintText}) {
    return InputDecoration(
      suffix: suffix,
      contentPadding: const EdgeInsets.all(14),
      labelStyle: const TextStyle(color: Pallete.primaryColor, backgroundColor: Colors.transparent),
      isDense: true,
      prefixIcon: prefixIcon != null
          ? Icon(
              prefixIcon,
              color: Pallete.primaryColor,
              size: 26,
            )
          : null,
      prefixIconConstraints: const BoxConstraints(
        minHeight: 50,
        minWidth: 50,
      ),
      counterText: "",
      hintText: hintText,
      hintStyle:
          const TextStyle(color: Pallete.primaryMidColor, backgroundColor: Pallete.primaryLightColor, fontSize: 14),
      filled: true,
      fillColor: Pallete.primaryLightColor,
      hoverColor: Pallete.primaryLightColor,
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade900, width: 1.5),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(2),
              bottomRight: Radius.circular(2),
              bottomLeft: Radius.circular(2),
              topRight: Radius.circular(2))),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade900, width: 1),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(2),
              bottomRight: Radius.circular(2),
              bottomLeft: Radius.circular(2),
              topRight: Radius.circular(2))),
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(2),
              bottomRight: Radius.circular(2),
              bottomLeft: Radius.circular(2),
              topRight: Radius.circular(2))),
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 0),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(2),
              bottomRight: Radius.circular(2),
              bottomLeft: Radius.circular(2),
              topRight: Radius.circular(2))),
    );
  }
}
