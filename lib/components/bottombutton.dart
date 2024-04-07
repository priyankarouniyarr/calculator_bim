import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, required this.buttonTittle});
  final Function()? onTap;
  final String buttonTittle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // () {
      //   Navigator.push(context, MaterialPageRoute(builder: (context) {
      //     return ResultPage();
      //   }));
      //   // Navigator.pushNamed(context, '/');
      // },
      child: Container(
          child: Center(
            child: Text(buttonTittle, style: kLargeButtonTextStyle),
          ),
          padding: EdgeInsets.only(bottom: 20.0),
          color: kbuttomContainerColur,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: kbottomContainerheight),
    );
  }
}
