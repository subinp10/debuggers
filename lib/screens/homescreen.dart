import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
static const String id ='homescreen';

  @override
  State<homescreen> createState() => _homescreenState();

}

class _homescreenState extends State<homescreen> {
  String address ='india';
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:Padding(
        padding: const EdgeInsets.fromLTRB(12,0,12,8),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                  ),
                ),

              ),
            ),
            Icon(Icons.notifications_none),
          ],
        ),
      )

    ));
  }
}
