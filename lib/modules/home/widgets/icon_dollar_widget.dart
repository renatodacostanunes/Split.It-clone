import 'package:flutter/material.dart';
import 'package:split_it/shared/theme/app_theme.dart';

enum IconDollarType { send, receive }

class IconDollarWidget extends StatelessWidget {
  const IconDollarWidget({Key? key, required this.type}) : super(key: key);
  final IconDollarType type;

  String get pathImage =>
      "assets/images/dollar-${type == IconDollarType.receive ? 'receive' : 'send'}-arrow.png";

  Color get backgroundColor => type == IconDollarType.receive
      ? AppTheme.colors.iconBackground1
      : AppTheme.colors.iconBackground2.withOpacity(0.1);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
        // border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Image.asset(
          pathImage,
          width: 32,
          height: 32,
        ),
      ),
    );
  }
}
