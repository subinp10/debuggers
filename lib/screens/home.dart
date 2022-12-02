import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gracia/screens/homescreen.dart';
class home extends StatefulWidget {
  static const String id ='home';

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: Column(
                children: [SizedBox(height: 50,),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('claim credits',)),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: () {}, child: const Text('sell credit'),),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: () {}, child: const Text('buy credit'))

                ],
              ),
            ),
          ),
        )
    ));
  }
}

