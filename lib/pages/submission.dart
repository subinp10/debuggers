import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
class subm extends StatefulWidget {
  static const String id ='submission';

  @override
  State<subm> createState() => _submState();
}

class _submState extends State<subm> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(backgroundColor:Colors.cyan ,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(height: 500,child: Text('Hai \n'
                  'your profile is currently on verfication.'
                  'After verfication of your project we will inform you by mail\n'
                  'Thankyou for choosing us',style:
              TextStyle(
                fontSize: 25,
              ),),),
            ),
          ),

    ));
  }
}
