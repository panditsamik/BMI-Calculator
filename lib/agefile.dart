import 'package:flutter/material.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AgeFile extends StatefulWidget {
  const AgeFile({Key? key}) : super(key: key);

  @override
  State<AgeFile> createState() => _AgeFileState();
}

class _AgeFileState extends State<AgeFile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xFF003566),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'AGE',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15.0,
              color: Color(0XFFadb5bd),
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            age.toString(),
            style:
            const TextStyle(fontSize: 50.0, color: Colors.white),
          ),
          const SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                backgroundColor: Color(0xFF1d4e89),
                onPressed: () {
                  setState(() {
                    age++;
                  });
                },
                heroTag: null,
                child: const Icon(
                  FontAwesomeIcons.add,
                  color: Color(0XFFdee2e6),
                ),
              ),
              SizedBox(width: 5.0),
              FloatingActionButton(
                backgroundColor: Color(0xFF1d4e89),
                onPressed: () {
                  setState(() {
                    age--;
                  });
                },
                heroTag: null,
                child: const Icon(
                  FontAwesomeIcons.subtract,
                  color: Color(0XFFdee2e6),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
