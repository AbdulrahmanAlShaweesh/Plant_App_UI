import 'package:flutter/material.dart';
import 'package:house_pante_app/constants/constants_colors.dart';

class PaymentButtom extends StatelessWidget {
  const PaymentButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
            height: 100, 
            width: 200, 
            decoration: const BoxDecoration(  
              color: KPrimaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0), 
              )
            ),
            child: const Text("Pay Now", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
          ),
          const Expanded(
            child: Text(""), 
          )
      ],
    );
  }
}