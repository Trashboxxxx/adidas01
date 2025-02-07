import 'package:adidas01/Adiclub.dart';
import 'package:adidas01/Search.dart';
import 'package:adidas01/Shopping.dart';
import 'package:adidas01/favorite.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{
  int _selcetedIndex = 0;

  final Map<int, Map<String,Widget>> _navigationMap = {
    0: {"title": const Text("Home"),"screen": HomeScreen()},
    1: {"title": const Text("Search"),"screen": Search()},
    2: {"title": const Text("Favorite"),"screen": Favorite()},
    3: {"title": const Text("Cart"),"screen": Shopping()},
    4: {"title": const Text("Adiclub"),"screen": Adiclub()},
  };
  void OnItemTapped(int index){
    setState(() {
      _selcetedIndex = index;
    });
  }

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
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selcetedIndex,
            onTap: OnItemTapped,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: 
                Image.asset("assets/icons/logo.png",width: 30,height: 30,),
                label: ""),
              BottomNavigationBarItem(icon: icon)
            ],
          ),      
      )
    );
  }
}