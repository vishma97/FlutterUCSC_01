import 'package:demo/views/home.dart';
import 'package:demo/views/login.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:demo/commons/route_generator.dart';
import 'package:demo/commons/themes.dart';
import 'package:demo/commons/utilities.dart';

void main() {
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
        path: 'assets/langs',
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: primaryTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      home: HomePage(),
    );
  }
}
