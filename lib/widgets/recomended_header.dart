import 'package:flutter/material.dart';
import 'package:house_pante_app/constants/constants_colors.dart';

class RecomendedHeader extends StatelessWidget {
  RecomendedHeader({super.key, required this.text});
  String text; 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 24, 
            // color: Colors.amber,
            child: Stack(  
              children: [
                Text(
                  text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Positioned(
                  bottom: 0.0, 
                  right: 0.0, 
                  left: 0.0,
                  child: Container(
                    height: 5, 
                    color: KPrimaryColor.withOpacity(0.23),
                  ),
                )
              ],
            ),
          ),
          Container(
          alignment: Alignment.center,
          height: 35, 
          width: 65, 
          decoration: BoxDecoration(  
            color: KPrimaryColor,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Text("More", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}