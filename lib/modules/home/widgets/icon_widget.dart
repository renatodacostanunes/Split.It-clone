import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(
            color: AppTheme.colors.border2.withOpacity(0.25),
            width: 1.5,
          ),
        ),
      ),
      child: Center(
        child: Icon(
          Icons.add,
          color: AppTheme.colors.icon,
        ),
      ),
    );
  }
}
