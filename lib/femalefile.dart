import 'package:flutter/material.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Femalefile extends StatefulWidget {
  const Femalefile({Key? key}) : super(key: key);

  @override
  State<Femalefile> createState() => _FemalefileState();
}

class _FemalefileState extends State<Femalefile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: femaleCardcolour,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            FontAwesomeIcons.venus,
            size: 55.0,
            color: Colors.white,
          ),
          SizedBox(height: 20.0),
          Text(
            'FEMALE',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15.0,
              color: Color(0XFFadb5bd),
              letterSpacing: 0.5,
            ),
          )
        ],
      ),
    );
  }
}
