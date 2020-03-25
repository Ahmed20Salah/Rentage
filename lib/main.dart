import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rentage/pages/ads.dart';
import 'package:rentage/pages/category.dart';
import 'package:rentage/pages/description.dart';
import 'package:rentage/pages/home.dart';
import 'package:rentage/pages/notifications.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [Locale('ar')],
      locale: Locale('ar'),
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      home: CategoryScreen('العاب'),
    );
  }
}
