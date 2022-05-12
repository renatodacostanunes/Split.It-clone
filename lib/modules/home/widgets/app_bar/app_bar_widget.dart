import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/add_button_widget.dart';
import 'package:split_it/modules/home/widgets/bottom_app_bar/bottom_app_bar_widget.dart';
import 'package:split_it/modules/login/models/user_model.dart';
import 'package:split_it/shared/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback onTap;
  AppBarWidget({Key? key, required this.user, required this.onTap})
      : super(
          key: key,
          child: Stack(
            children: <Widget>[
              Container(
                height: 210,
                decoration: BoxDecoration(
                  gradient: AppTheme.gradients.background,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        user.photoUrl!,
                      ),
                    ),
                    title: RichText(
                      text: TextSpan(
                        text: 'Olá, ',
                        style: AppTheme.textStyles.greeting,
                        children: <TextSpan>[
                          TextSpan(
                            text: user.name!,
                            style: AppTheme.textStyles.titleAppbar,
                          ),
                        ],
                      ),
                    ),
                    trailing: AddButtonWidget(
                      onTap: onTap,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 125),
                child: BottomAppBarWidget(),
              ),
            ],
          ),
          preferredSize: const Size.fromHeight(270),
        );
}
