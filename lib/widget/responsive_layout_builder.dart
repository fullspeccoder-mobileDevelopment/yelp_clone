import 'package:flutter/material.dart';
import 'package:keiko_food/helper/constants.dart';

class ResponsiveLayoutBuilder extends StatelessWidget {
  const ResponsiveLayoutBuilder(
      {super.key, required this.mobile, required this.webDesktopTablet});

  final Widget mobile;
  final Widget webDesktopTablet;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) =>
            (constraints.maxWidth < ResponsiveSizes.mobile.value)
                ? mobile
                : webDesktopTablet);
  }
}
