import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _tileColor = Color.fromRGBO(251, 251, 251, 1);
  bool isPressed = false;
  bool isTilePressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Card(
            color: _tileColor,
            child: ExpansionTile(
              onExpansionChanged: (expanded) {
                setState(
                  () {
                    if (expanded) {
                      _tileColor = Color.fromRGBO(227, 227, 227, 1);
                    } else {
                      _tileColor = Color.fromRGBO(251, 251, 251, 1);
                    }
                  },
                );
              },
              tilePadding: EdgeInsets.symmetric(vertical: 0, horizontal: 3),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isPressed,
                    onChanged: (value) {
                      setState(
                        () {
                          isPressed = value;
                        },
                      );
                    },
                  ),
                  Text(
                    '№32541235',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Column(
                    children: [
                      Text(
                        'Leningrad district city name ',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Leningrad district city name ',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Договор №112345 от 02.10.2020',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "OOO Охранная Фирма Титан ООО Фирма заказчика",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check,
                      ),
                      Text('TO Охранная сигнализация'),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check,
                      ),
                      Text('TO Пожарная сигнализация '),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check,
                      ),
                      Text(
                        'КТС',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
