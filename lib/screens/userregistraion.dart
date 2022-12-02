import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gracia/pages/upload.dart';
    class userreg extends StatefulWidget {
      static const String id = 'userreg';

    
      @override
      State<userreg> createState() => _userregState();
    }
    
    class _userregState extends State<userreg> {
      final _formkey = GlobalKey<FormState>();
      @override
      Widget build(BuildContext context) {
        return SafeArea(child: Scaffold(
          appBar: AppBar(title:Text('Add some details',style: TextStyle(color: Colors.black)
            )
          ,shape: Border(
              bottom: BorderSide(color: Colors.grey.shade600),
            ),),
          body: Form(key: _formkey,
              child:Column(
                children: [
                    Text('User Registraion'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText:'enter your name' ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText:'address' ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText:'enter your pin code' ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText:'enter your wallet adress' ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(labelText:'enter your pan card number' ),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, upload.id);
                  }, child:Text('register '))


                ],
              )


          ),
        )
        );
      }
    }
    
