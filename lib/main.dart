
import 'package:ecommerceuid/pages/history_screen.dart';
import 'package:ecommerceuid/pages/home_screen.dart';
import 'package:ecommerceuid/pages/profile_screen.dart';
import 'package:ecommerceuid/pages/wishlist_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _HomepageState();
}

class _HomepageState extends State<MyApp> {
  int currentIndex = 0;
  List screens=[ HomeScreen(),
  WishlistScreen(),
  HistoryScreen(),
  ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex:currentIndex,
            onTap:(value){
              setState(() =>currentIndex=value);
            },selectedItemColor:Color(0xff67C4A7),unselectedItemColor:Colors.grey,items: const [
          BottomNavigationBarItem(label: "Home",icon:  ImageIcon(
    AssetImage("assets/icons/Home.png") ),
     ),   BottomNavigationBarItem(label: "Wishlist",icon:  ImageIcon(
              AssetImage("assets/icons/Heart.png") ),
          ),
          BottomNavigationBarItem(label: "History",icon:  ImageIcon(
              AssetImage("assets/icons/Paper.png") ),
          ),
          BottomNavigationBarItem(label: "Profile",icon:  ImageIcon(
              AssetImage("assets/icons/Profile.png") ),
          ),

          ]),
      ),
    );
  }
}


