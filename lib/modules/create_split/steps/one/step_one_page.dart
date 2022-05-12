import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_title_widget.dart';

class StepOnePage extends StatefulWidget {
  final void Function(String value) onChanged;
  const StepOnePage({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<StepOnePage> createState() => _StepOnePageState();
}

class _StepOnePageState extends State<StepOnePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const StepTitleWidget(
          title: 'Qual o nome',
          subtitle: '\ndo evento?',
        ),
        StepInputTextWidget(
          hintText: 'Ex: Churrasco',
          onChanged: widget.onChanged,
        ),
      ],
    );
  }
}
