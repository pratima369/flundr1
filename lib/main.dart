import 'package:flundr/common/constants/color_style.dart';
import 'package:flundr/common/responsive/responsive_layout.dart';
import 'package:flundr/src/presentation/screens/auth/tab_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: secondaryColor,
      systemNavigationBarColor: secondaryColor,
    )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flundr',
      theme: ThemeData(
      // colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF5485F6)),
        colorScheme: ColorScheme.fromSeed(seedColor:Color(0xFF5485F6) ),
        useMaterial3: true,
      ),
      home:ResponsiveLayout(
          mobileBody: const LoginButtons(),
        desktopBody: const LoginButtons(),

      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
