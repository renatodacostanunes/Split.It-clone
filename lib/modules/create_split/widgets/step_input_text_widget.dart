import 'package:flutter/material.dart';
import 'package:split_it/shared/theme/app_theme.dart';

class StepInputTextWidget extends StatelessWidget {
  const StepInputTextWidget({
    Key? key,
    required this.onChanged,
    required this.hintText,
    this.align = TextAlign.center,
    this.padding,
  }) : super(key: key);

  final void Function(String) onChanged;
  final TextAlign align;
  final String hintText;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 64),
      child: TextField(
        style: AppTheme.textStyles.textField,
        textAlign: align,
        cursorColor: Colors.grey,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTheme.textStyles.hintTextField,
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.colors.inputBorder.withOpacity(0.2),
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.colors.inputBorder.withOpacity(0.2),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppTheme.colors.inputBorder,
            ),
          ),
        ),
      ),
    );
  }
}
