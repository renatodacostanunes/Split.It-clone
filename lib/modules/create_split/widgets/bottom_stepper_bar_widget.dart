import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/stepper_next_button_widget.dart';
import 'package:split_it/shared/theme/app_theme.dart';

class BottomStepperBarWidget extends StatelessWidget {
  const BottomStepperBarWidget(
      {Key? key,
      required this.onTapCancel,
      required this.onTapNext,
      this.enabledButtons = false})
      : super(key: key);
  final VoidCallback onTapCancel;
  final VoidCallback onTapNext;
  final bool enabledButtons;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: AppTheme.colors.divider, width: 1),
        ),
      ),
      child: Row(children: [
        StepperNextButtonWidget(
          label: 'CANCELAR',
          onPressed: onTapCancel,
          enabled: enabledButtons,
        ),
        Container(
          width: 1,
          height: double.maxFinite,
          color: AppTheme.colors.divider,
        ),
        StepperNextButtonWidget(
          label: 'CONTINUAR',
          onPressed: onTapNext,
          enabled: enabledButtons,
        ),
      ]),
    );
  }
}
