import 'package:calculator_app/btntext.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String result = "";
  String expression = "";
  void onpress(c) {
    setState(() {
      expression += c;
    });
  }

  void clearexp() {
    setState(() {
      expression = "";
      result = "";
    });
  }

  void evalexpr() {
    GrammarParser p = GrammarParser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    double res = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      expression = res.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Center(
          child: Text(
            "-- CALCULATOR --",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerRight,
            child: Center(
              child: Text(
                expression == "" ? "ENTER HERE WITH KEYS" : expression,
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () => onpress("7"),
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          '7',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 45,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () => onpress("8"),
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          '8',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 45,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () => onpress("9"),
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          '9',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 45,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () => onpress("+"),
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          '+',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 45,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () => onpress("4"),
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          '4',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 45,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () => onpress("5"),
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          '5',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 45,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () => onpress("6"),
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          '6',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 45,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () => onpress("-"),
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          '-',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 45,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () => onpress("1"),
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 45,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () => onpress("2"),
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: MyText("2"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () => onpress("3"),
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: MyText("3"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () => onpress("*"),
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: MyText("*"),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        onPressed: () => onpress("0"),
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: MyText("0"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () => clearexp(),
                        child: Text(
                          'C',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 79, 79),
                            fontWeight: FontWeight.w600,
                            fontSize: 45,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () => onpress("/"),
                        child: MyText("/"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: (Color.fromARGB(255, 60, 98, 98)),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () => evalexpr(),
                        child: MyText("="),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
