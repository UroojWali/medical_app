import 'package:flutter/material.dart';
import 'package:medical_app/constants/images_constants.dart';
import 'package:medical_app/routes/route_generator.dart';
import 'package:medical_app/themes/themes_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage(ImageConstants.backgroundImage), context);
    precacheImage(const AssetImage(ImageConstants.logoImage), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeBuilder.buildTheme(context, Brightness.light),
      onGenerateRoute: RoutesGenerator.onGenerateRoute,
    );
  }
}
