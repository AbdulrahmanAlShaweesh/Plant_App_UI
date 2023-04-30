import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});
  int index = 0; 
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: widget.index,
        onTap: (index){
          setState(() {
              widget.index = index;
          });
        },
        showSelectedLabels: true,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.green,
        elevation: 0.0, 
        selectedFontSize: 18,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home), label: "Home"
          ), 
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search), label: "Search"
          ), 
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.camera), label: "camera"
          ), 
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled), label: "Profile"
          ),
        ],
      );
  }
}