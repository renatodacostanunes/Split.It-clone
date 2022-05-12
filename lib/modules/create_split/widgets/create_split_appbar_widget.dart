import 'package:flutter/material.dart';
import 'package:split_it/shared/theme/app_theme.dart';

class CreateSplitAppBarWidget extends PreferredSize {
  final VoidCallback onTap;
  final int actualPage;
  final int size;
  CreateSplitAppBarWidget({
    required this.onTap,
    required this.actualPage,
    required this.size,
    Key? key,
  }) : super(
            key: key,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppTheme.colors.backButton,
                    ),
                    onPressed: onTap,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Text.rich(
                    TextSpan(
                      text: '0${actualPage + 1}',
                      style: AppTheme.textStyles.stepperIndicatorPrimary,
                      children: [
                        TextSpan(
                          text: ' - 0$size',
                          style: AppTheme.textStyles.stepperIndicatorSecondary,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            preferredSize: const Size.fromHeight(60));
}
