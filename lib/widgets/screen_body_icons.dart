// ignore_for_file: must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:house_pante_app/constants/constants_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenBodyIcons extends StatelessWidget {
  ScreenBodyIcons({super.key,required this.assetName});
  String assetName; 
  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.025),
    // padding: const EdgeInsets.all(10),
    alignment: Alignment.center,
      height: 62, 
      width:  62, 
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
        color: Colors.white, 
        boxShadow: [
          BoxShadow(
            color:KPrimaryColor.withOpacity(0.3), 
            offset: const Offset(0, 10), 
            blurRadius: 60
          ), 
          const BoxShadow(
            color: Colors.white, 
            offset: Offset(-15, -15), 
            blurRadius: 60
          ), 
        ]
      ),
      child: SvgPicture.asset(assetName) 
    );
  }
}