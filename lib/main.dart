import 'package:flutter/material.dart';

import 'bottom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("Bottom Navigation Tab Bar")),),

        body: BottomNavigiation(),
      ),
     
      
      
    );
  }
}