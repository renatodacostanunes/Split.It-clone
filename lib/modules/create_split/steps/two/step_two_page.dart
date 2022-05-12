import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/person_tile_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_title_widget.dart';

class StepTwoPage extends StatefulWidget {
  const StepTwoPage({Key? key}) : super(key: key);

  @override
  State<StepTwoPage> createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const StepTitleWidget(
          title: 'Com quem',
          subtitle: '\nvocê quer dividir?',
        ),
        StepInputTextWidget(
          hintText: 'Nome da pessoa',
          onChanged: (String value) {},
        ),
        const SizedBox(
          height: 35,
        ),
        const PersonTileWidget(
          name: 'André Habib',
        ),
        const PersonTileWidget(
          name: 'André Habib',
        ),
        const PersonTileWidget(
          name: 'André Habib',
        )
      ],
    );
  }
}
