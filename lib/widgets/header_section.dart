
// ignore_for_file: unnecessary_import, implementation_imports, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:house_pante_app/constants/constants_colors.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: MediaQuery.of(context).size.height * 0.2,
      //  color: Colors.amber,
       child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2 - 27, 
            decoration: const BoxDecoration(  
              color: KPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30), 
                bottomRight: Radius.circular(30)
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Hi, Uishopy!", style: TextStyle(fontSize: 25, color: Colors.white),), 
                  CircleAvatar(
                    backgroundColor: Colors.grey, 
                    radius: 32,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://png.pngtree.com/template/20191024/ourmid/pngtree-flower-pot-and-plant-logo-growth-vector-logo-image_322939.jpg"),
                    ),
                  ),
                 ],
              ),
            ),
          ), 
          Positioned(
            bottom: 0, 
            left: 0, 
            right: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 54, 
              decoration: BoxDecoration(
                boxShadow:  [
                  BoxShadow(
                    color: KPrimaryColor.withOpacity(0.3), 
                    offset: const Offset(0, 10), 
                    blurRadius: 50
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(fontSize: 18, color: KPrimaryColor),
                        contentPadding: EdgeInsets.symmetric(horizontal: KPadding),
                        border: InputBorder.none, 
                        enabledBorder: InputBorder.none, 
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Icon(Icons.search, size: 28, color: KPrimaryColor,))
                ],
              ),
            ),
          ), 
        ],
      ),
    );
  }
}