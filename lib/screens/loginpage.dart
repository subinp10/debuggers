import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:gracia/screens/Authui.dart';
class loginpage extends StatelessWidget {

 static const String id ='login-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade900,
      body:Column(mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child:Container(height: 300,width: 382,
            color: Colors.white,
            child: Column(
                  children: [
                    ClipRect(
                      child: Align(
                        alignment: Alignment.topCenter,
                        heightFactor: 0.8,
                        child:Image.asset('assets/images/project.jpg',),
                      ),
                    )
                  ],
            ),
          )),Expanded(child:Container(child: Authui(),))
        ],
      )
    );
  }
}
