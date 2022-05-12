import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:intl/intl.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/modules/home/widgets/loading_widget.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/shared/theme/app_theme.dart';

class EventTileWidget extends StatefulWidget {
  const EventTileWidget({
    Key? key,
    required this.model,
    this.isLoading = false,
  }) : super(key: key);

  final EventModel model;
  final bool isLoading;

  @override
  State<EventTileWidget> createState() => _EventTileWidgetState();
}

class _EventTileWidgetState extends State<EventTileWidget> {
  final MoneyMaskedTextController controller = MoneyMaskedTextController();

  IconDollarType get type =>
      widget.model.value! >= 0 ? IconDollarType.receive : IconDollarType.send;

  String get peopleFormated =>
      "${widget.model.people} pessoa${widget.model.people == 1 ? '' : 's'}";

  String get value {
    controller.updateValue(widget.model.value!);
    return controller.text;
  }

  String get date {
    final dateFormat = DateFormat("MMMd", "pt_br");
    return dateFormat.format(widget.model.created!);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isLoading) {
      return Row(
        children: <Widget>[
          const LoadingWidget(size: Size(56, 56)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const LoadingWidget(size: Size(81, 19)),
                    subtitle: const LoadingWidget(size: Size(52, 18)),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        LoadingWidget(size: Size(61, 17)),
                        SizedBox(height: 5),
                        LoadingWidget(size: Size(44, 18))
                      ],
                    ),
                  ),
                  Divider(color: AppTheme.colors.divider),
                ],
              ),
            ),
          ),
        ],
      );
    }
    return Row(
      children: <Widget>[
        IconDollarWidget(
          type: type,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    widget.model.title!,
                    style: AppTheme.textStyles.eventTileTitle,
                  ),
                  subtitle:
                      Text(date, style: AppTheme.textStyles.eventTileSubtitle),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'R\$ ',
                          style: AppTheme.textStyles.eventTileSymbol,
                          children: <TextSpan>[
                            TextSpan(
                              text: value,
                              style: AppTheme.textStyles.eventTileMoney,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(peopleFormated,
                          style: AppTheme.textStyles.eventTilePeople),
                    ],
                  ),
                ),
                Divider(color: AppTheme.colors.divider),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
