import 'package:flutter/material.dart';
import 'package:split_it/shared/theme/app_theme.dart';

class StepperNextButtonWidget extends StatelessWidget {
  const StepperNextButtonWidget(
      {Key? key, required this.label, this.onPressed, this.enabled = false})
      : super(key: key);
  final String label;
  final VoidCallback? onPressed;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: enabled ? onPressed : null,
        child: Text(
          label,
          style: enabled
              ? AppTheme.textStyles.stepperNextButton
              : AppTheme.textStyles.stepperNextButtonDisabeld,
        ),
      ),
    );
  }
}
