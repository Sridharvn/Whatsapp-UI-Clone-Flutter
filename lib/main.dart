import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone_flutter/colors.dart';
import 'package:whatsapp_ui_clone_flutter/responsive/responsive_layout.dart';
import 'package:whatsapp_ui_clone_flutter/screens/mobile_screens_layout.dart';
import 'package:whatsapp_ui_clone_flutter/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayout(MobileScreenLayout: MobileScreenLayout(), WebScreenLayout: WebScreenLayout( )),
    );
  }
}
