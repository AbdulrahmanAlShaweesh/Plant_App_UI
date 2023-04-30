// ignore_for_file: avoid_unnecessary_containers, unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house_pante_app/constants/constants_colors.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:house_pante_app/model/providerModel.dart';
import 'package:house_pante_app/screen/screen_body.dart';
import 'package:house_pante_app/widgets/bottom_naviation_bar.dart';
import 'package:house_pante_app/widgets/drawer.dart';
import 'package:house_pante_app/widgets/header_section.dart';
import 'package:house_pante_app/widgets/plants_body.dart';
import 'package:house_pante_app/widgets/recomended_header.dart';
import 'package:provider/provider.dart';
import '../model/plant_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = "Home Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        elevation: 0.0, 
        backgroundColor: KPrimaryColor,
        leading: IconButton(  
          onPressed: (){},
          icon: const Icon(Icons.menu_rounded, size: 28),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
               const HeaderSection(), 
               RecomendedHeader(text:"Recomended",),
               const PlantsBody(),
               RecomendedHeader(text: "Featured Plants"),
               const PlantsBody()
            ],
          ),
        ),
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: BottomNavBar(),  
    );
  }
}