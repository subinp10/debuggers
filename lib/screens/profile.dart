import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class profile extends StatefulWidget {


  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final double CoverHeight=280;
  final double profileHeight=144;

  @override
  Widget build(BuildContext context) {
    final double top = CoverHeight - profileHeight;
    return SafeArea(child: Scaffold(
       body: Stack(
         alignment: Alignment.center,children: [BuildCoverImage(),
       Positioned(top:top,
           child: BuildprofileImage())],
       )
      ,
    ));
  }
  Widget BuildCoverImage()=>Container(
    color: Colors.grey,
    child:Image.asset('assets/images/profile.jpeg',width:double.infinity,
        height: CoverHeight,
        fit:BoxFit.cover),


  );
  Widget BuildprofileImage()=> Container(
  );
}
