import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/modules/home/widgets/loading_widget.dart';
import 'package:split_it/shared/theme/app_theme.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, required this.value, this.isLoading = false})
      : super(key: key);

  final double value;

  final bool isLoading;

  bool get receive => value >= 0 ? true : false;

  String get text => "A ${receive ? 'receber' : 'pagar'}";

  TextStyle get dollarStyle => receive
      ? AppTheme.textStyles.infoCardSymbol1
      : AppTheme.textStyles.infoCardSymbol2;

  TextStyle get valueStyle => receive
      ? AppTheme.textStyles.infoCardValue1
      : AppTheme.textStyles.infoCardValue2;

  IconDollarType get type =>
      receive ? IconDollarType.receive : IconDollarType.send;

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
            IconDollarWidget(
              type: type,
            ),
            Text(
              text,
              style: AppTheme.textStyles.messageInfoCard,
            ),
            if (isLoading) ...[
              const LoadingWidget(size: Size(94, 24)),
            ] else ...[
              RichText(
                text: TextSpan(
                  text: 'R\$ ',
                  style: dollarStyle,
                  children: <TextSpan>[
                    TextSpan(
                      text: controller.text,
                      style: valueStyle,
                    ),
                  ],
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}
