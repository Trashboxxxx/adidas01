import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('SHOP',style: TextStyle(letterSpacing:2,color: Colors.black),),
          actions: [
            IconButton(icon: Icon(Icons.person_2_outlined, size: 45,),onPressed: (){},),
            IconButton(icon: Icon(Icons.settings, size: 45,),onPressed: (){},)
          ],
          ),     
          bottomNavigationBar: BottomNavigationBar(items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home')
          ]),    
      )
    );
  }
}