import '../components/icon_content.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, required this.onpres});
  final IconData? icon;
  final Function() onpres;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
        elevation: 0.0, //when the button is enables but not press; no change
        onPressed: onpres,
        child: Icon(icon)); //its is for size
  }
}
