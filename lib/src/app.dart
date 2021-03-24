
import 'package:aversiva/src/pages/contador_page.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build( context ) {

    return MaterialApp(
      // Quitar la marca de agua de default
      debugShowCheckedModeBanner:false ,
      home: Center(
        child: ContadorPage(),
      ), 
    );
  }
}