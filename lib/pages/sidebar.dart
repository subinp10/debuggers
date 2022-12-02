import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class NavigationDrawer extends StatelessWidget {



  @override

  Widget build(BuildContext context)=>Drawer(

    child:SingleChildScrollView(

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,

        children:<Widget> [

          buildHeader(context),

          BuildMenuItems(context)

        ], // <Widget>

      ), // Column

    ), // SingleChildScrollView

  ); // Drawer

  Widget buildHeader(BuildContext context)=>Container(

    padding: EdgeInsets.only(

        top: MediaQuery.of(context).padding.top,

  ) //edgeinsetsonly

  ); //container

  Widget BuildMenuItems(BuildContext context)=>Column(

      children:[

      ListTile(

      leading:const Icon(Icons.home_outlined),

  title:  Text('Home'),

  onTap:(){},

  ), //ListTile

  ListTile(

  leading:const Icon(Icons.home_outlined),

  title: const Text('Home'),

  onTap:(){},

  ), //ListTileListTile(

  leading:const Icon(Icons.home_outlined),

  title: const Text('Home'),

  OnTap:(){},

  , //List
  // Tile
  //
  //
  ListTile(

  leading:const Icon()Icons.home_outlined),

  title: const Text('Home'),

  OnTap:(){},

  ), //ListTile
  ],

  ); //Column

}