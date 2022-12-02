import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:gracia/pages/submission.dart';
import 'package:gracia/pages/upload.dart';
import 'package:gracia/screens/Splash.dart';
import 'package:gracia/screens/home.dart';
import 'package:gracia/screens/homescreen.dart';
import 'package:gracia/screens/loginpage.dart';
import 'package:gracia/screens/phoneauth.dart';
import 'package:gracia/screens/userregistraion.dart';


void main() {

  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return FutureBuilder(
      future:Future.delayed(Duration(seconds:3 )),
      builder:(context ,AsyncSnapshot snapshot) {
        if(snapshot.connectionState==ConnectionState.waiting )
          {
            return MaterialApp(home:Splash());
          }
        else{
          return MaterialApp(home:loginpage(),
              routes: {
                loginpage.id:(context)=>loginpage(),
                phoneauthscreen.id:(context)=>phoneauthscreen(),
                homescreen.id:(context)=>homescreen(),
                home.id:(context)=>home(),
                userreg.id:(context)=>userreg(),
                upload.id:(context)=>upload(),
                subm.id:(context)=>subm()
              },
          );
        }
      },

    );
  }
}