import 'package:bmi_calculator_flutter/screens/input_page.dart';
import 'package:bmi_calculator_flutter/screens/result_page.dart';
import 'package:flutter/material.dart';
//import 'result_page.dart';
//import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //here copywith
      //is  the method

      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            //work for all pages and if one changes then we can used copywith
            backgroundColor: Color(0xFF0A0E21),
            titleTextStyle: TextStyle(color: Colors.white)),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),

      // // textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white)

      // primaryColor: Color.fromARGB(255, 255, 0, 0),
      // primarySwatch: Colors.green,
      // useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
      // routes: {
      //   '/': (context) => ResultPage(),//this for complex
      // }
    );
  }
}
