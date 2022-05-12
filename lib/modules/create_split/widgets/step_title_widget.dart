import 'package:flutter/material.dart';
import 'package:split_it/shared/theme/app_theme.dart';

class StepTitleWidget extends StatelessWidget {
  const StepTitleWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            text: title,
            style: AppTheme.textStyles.stepperTitle,
            children: [
              TextSpan(
                text: subtitle,
                style: AppTheme.textStyles.stepperSubtitle,
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
