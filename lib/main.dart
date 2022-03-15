import 'package:coding_test/config/router.dart';
import 'package:coding_test/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coding test',
      debugShowCheckedModeBanner: false,
      theme: AppThemeClass.appLightTheme,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
