import 'package:flutter/material.dart';

class BottomNavigiation extends StatefulWidget {
 

  @override
  _BottomNavigiationState createState() => _BottomNavigiationState();
}

class _BottomNavigiationState extends State<BottomNavigiation> {
  @override

  int currentIndex=0;
  final tabs =[
     
      Container(
        height: 400,
        width: 800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(('Home Screen'),style: TextStyle(fontSize: 30),)
          ],
        )),
         Container(
        height: 400,
        width: 800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(('Search Screen'),style: TextStyle(fontSize: 30),)
          ],
        )),
     
       Container(
        height: 400,
        width: 800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(('Camera Screen'),style: TextStyle(fontSize: 30),)
          ],
        )),
          Container(
        height: 400,
        width: 800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(('Profile Screen'),style: TextStyle(fontSize: 30),)
          ],
        ))
     
     

  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: 
          tabs[currentIndex]
        )
        ,
      
      
    
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
      selectedFontSize: 20,
      unselectedFontSize: 20,
      items: [
        
      
        BottomNavigationBarItem(icon: Icon(Icons.home),
        title: Text("Home"),
        backgroundColor: Colors.blue
       ),
        BottomNavigationBarItem(icon: Icon(Icons.search),
        title: Text("Search"),
        backgroundColor: Colors.red
       ),
        BottomNavigationBarItem(icon: Icon(Icons.camera,size: 40,),
        title: Text("Camera"),
        backgroundColor: Colors.black
        
       ),
        BottomNavigationBarItem(icon: Icon(Icons.person),
        title: Text("Profile"),
        backgroundColor: Colors.blue
       ),
        
        
      ],
      onTap:(index){
        setState(() {
          currentIndex = index;
        });
      }
    ));
     
    
  }
}