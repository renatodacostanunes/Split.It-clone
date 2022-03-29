import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:split_it/theme/app_theme.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, required this.receive, required this.value})
      : super(key: key);
  final bool receive;
  final double value;

  @override
  Widget build(BuildContext context) {
    MoneyMaskedTextController controller = MoneyMaskedTextController();
    controller.updateValue(value);
    return Container(
      width: 156,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(color: AppTheme.colors.borderInfoCard),
        ),
        gradient: AppTheme.gradients.backgroundInfoCard,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: receive
                    ? Colors.transparent
                    : AppTheme.colors.backgroundBoxIcon.withOpacity(0.1),
                // border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Image.asset(
                  receive
                      ? 'assets/images/dollar-receive-arrow.png'
                      : 'assets/images/dollar-send-arrow.png',
                  width: 32,
                  height: 32,
                ),
              ),
            ),
            Text(
              receive ? 'A receber' : 'A pagar',
              style: AppTheme.textStyles.messageInfoCard,
            ),
            RichText(
              text: TextSpan(
                text: 'R\$ ',
                style: receive
                    ? AppTheme.textStyles.receiveSymbolInfoCard
                    : AppTheme.textStyles.sendSymbolInfoCard,
                children: <TextSpan>[
                  TextSpan(
                      text: controller.text,
                      style: receive
                          ? AppTheme.textStyles.receiveValueInfoCard
                          : AppTheme.textStyles.sendValueInfoCard),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
