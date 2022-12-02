import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gracia/screens/homescreen.dart';
import 'package:gracia/screens/home.dart';
import 'package:gracia/screens/userregistraion.dart';
class phoneauthscreen extends StatefulWidget {
  static const String id ='phoneatuhscreen';

  @override
  State<phoneauthscreen> createState() => _phoneauthscreenState();
}

class _phoneauthscreenState extends State<phoneauthscreen> {
  @override


  @override
  Widget build(BuildContext context) {
    var codecontroller=TextEditingController(text:'+91');
    var phcontroller =TextEditingController();
    String counttext='0';
    ShowAlertDilog(BuildContext context){
      AlertDialog alert = AlertDialog(
        content: Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 8,),
            Text('please wait'),
            
          ],
        ),
      );
      showDialog(context: context, builder: (BuildContext context){
     return alert;});
    }
    return SafeArea(
      child: Scaffold(appBar: AppBar(backgroundColor: Colors.white,
       iconTheme: IconThemeData(color:Colors.black),
        title: Text('Login',style: TextStyle(color: Colors.black),),
      ),
          body:Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red.shade200,
                  child: Icon(CupertinoIcons.person_alt_circle,color: Colors.red,
                    size: 60,),


                ),
                SizedBox(height: 10,),
                Text('Enter your phone Number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text('we will send confirmation OTP to your phone',style: TextStyle(color: Colors.grey),),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: TextFormField(
                      controller: codecontroller,
                      enabled: false,
                      decoration: InputDecoration(labelText: 'Country'),
                    )
                    ,flex: 1,),
                    SizedBox(width: 10,),
                    Expanded(child: TextFormField(keyboardType: TextInputType.phone,
                      controller: phcontroller,
                      decoration: InputDecoration(labelText:'Phone Number',
                      hintText: 'Enter your phone number',
                      hintStyle: TextStyle(fontSize: 10,color: Colors.grey,),
                       counterText: '$counttext/10',
                          counterStyle: TextStyle(fontSize: 10),


                    ),

                    )
                      ,flex: 3,),

                  ],
                )
              ],
            ),
          ),

bottomNavigationBar: ElevatedButton(
  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor)),
  onPressed: (){

    String number ='${codecontroller.text}${phcontroller.text}';

    Navigator.pushNamed(context, userreg.id);

  },
  child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Next',style: TextStyle(color: Colors.white),),
  ),
),


      ),
    );
  }
}
