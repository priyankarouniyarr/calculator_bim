import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData? icon;
  final String? label;
  IconContent({this.icon, this.label});
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        icon,
        size: kiconheight,
      ),
      SizedBox(height: kSpaceheight),
      Text(label!, style: kLabelTextStyle),
    ]);
  }
}
