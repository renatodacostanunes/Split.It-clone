import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text_widget.dart';
import 'package:split_it/modules/create_split/widgets/step_title_widget.dart';

class StepThreePage extends StatelessWidget {
  const StepThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const StepTitleWidget(
          title: 'Qual ou quais',
          subtitle: '\nítens você quer dividir?',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 24),
                child: Text('1'),
              ),
              Expanded(
                flex: 3,
                child: StepInputTextWidget(
                  hintText: 'Ex: Picanha',
                  padding: EdgeInsets.zero,
                  onChanged: (value) {},
                  align: TextAlign.start,
                ),
              ),
              Expanded(
                child: StepInputTextWidget(
                  hintText: 'R\$ 0,00',
                  padding: EdgeInsets.zero,
                  onChanged: (value) {},
                  align: TextAlign.start,
                ),
              ),
              IconButton(icon: const Icon(Icons.delete), onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
