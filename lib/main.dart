import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:split_it/app_widget.dart';

void main() async {
  initializeDateFormatting('pt_br', null)
      .then((_) => runApp(const AppWidget()));
}

// teste
