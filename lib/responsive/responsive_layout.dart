import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget MobileScreenLayout;
  final Widget WebScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.MobileScreenLayout,
      required this.WebScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        //   Web Screen
        return WebScreenLayout;
      }
      //   Mobile Screen
       return MobileScreenLayout;
    });
  }
}
