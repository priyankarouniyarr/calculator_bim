import 'package:flutter/material.dart';

import 'package:bmi_calculator_flutter/screens/result_page.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.colur,
      this.cardChild,
      this.onPress}); //constructor created
  final Color? colur;
  final Widget? cardChild;
  final Function? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress!();
      },
      child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: colur,
            borderRadius: BorderRadius.circular(10),
          )),
    );
    // );
  }
}
