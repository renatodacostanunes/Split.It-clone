import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/steps/one/step_one_page.dart';
import 'package:split_it/modules/create_split/steps/three/step_three_page.dart';
import 'package:split_it/modules/create_split/steps/two/step_two_page.dart';
import 'package:split_it/modules/create_split/widgets/bottom_stepper_bar_widget.dart';
import 'package:split_it/modules/create_split/widgets/create_split_appbar_widget.dart';
import 'package:split_it/shared/theme/app_theme.dart';

class CreateSplitPage extends StatefulWidget {
  const CreateSplitPage({Key? key}) : super(key: key);

  @override
  State<CreateSplitPage> createState() => _CreateSplitPageState();
}

class _CreateSplitPageState extends State<CreateSplitPage> {
  final controller = CreateSplitController();
  late List<Widget> pages;

  void nextPage() {
    setState(() {
      if (index < 2) {
        index++;
      }
    });
  }

  void backPage() {
    if (index > 0) {
      index--;
      setState(() {});
    }
  }

  var index = 0;

  @override
  void initState() {
    pages = [
      StepOnePage(
        onChanged: (value) {
          controller.setEventName(value);
          setState(() {});
        },
      ),
      const StepTwoPage(),
      const StepThreePage(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        backgroundColor: AppTheme.colors.background,
        appBar: CreateSplitAppBarWidget(
          size: pages.length,
          actualPage: index,
          onTap: backPage,
        ),
        body: pages[index],
        bottomNavigationBar: BottomStepperBarWidget(
          onTapCancel: () {},
          enabledButtons: controller.enableNavigateButton(),
          onTapNext: nextPage,
        ),
      ),
    );
  }
}
