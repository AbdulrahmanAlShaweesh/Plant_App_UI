
import 'package:flutter/material.dart';
import 'package:house_pante_app/constants/constants_colors.dart';
import 'package:house_pante_app/model/providerModel.dart';
import 'package:house_pante_app/widgets/payement_buttom.dart';
import 'package:house_pante_app/widgets/screen_body_icons.dart';
import 'package:provider/provider.dart';

class ScreenBody extends StatelessWidget {
  const ScreenBody({super.key});
  static String id = "Screen Body";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: ListView(
           
            children:  [
               SizedBox(
                height: MediaQuery.of(context).size.height*0.7,
                 child: Row(  
                  children: [
                     Expanded(
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20, bottom: 50),
                              child: Align(
                                
                              alignment: Alignment.topLeft,
                               child: IconButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                }, 
                                icon: const Icon(Icons.arrow_back, color: KPrimaryColor, size: 28,)
                               ),
                                                     ),
                            ), 
                            // const Spacer(),
                            ScreenBodyIcons(
                            assetName: "Icons/sun.svg"),
                            ScreenBodyIcons(
                            assetName: "Icons/icon_2.svg",
                           ),
                            ScreenBodyIcons(
                              assetName: "Icons/icon_3.svg"
                            ),
                            ScreenBodyIcons(
                              assetName: "Icons/icon_4.svg"
                            ), 
                        ],
                      ), 
                     ), 
                     Container(
                        height: MediaQuery.of(context).size.height * 0.7, 
                        // color: Colors.red,
                        width: MediaQuery.of(context).size.width * 0.78,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: KPrimaryColor.withOpacity(0.25), 
                              offset: const Offset(0, 10), 
                              blurRadius: 60
                            ),
                          ],
                          borderRadius: const BorderRadius.only(
                             topLeft: Radius.circular(20),
                             bottomLeft: Radius.circular(20),
                          ),
                          // color: Colors.red,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              context.read<ProviderModel>().plantData!.imageUrl,
                            ),
                          ),
                        ),
                     ), 
                  ],  
                 ),
               ), 
               Padding(
                 padding: const EdgeInsets.only(left: 15, top: 25, right: 15),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.read<ProviderModel>().plantData!.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, ), overflow: TextOverflow.ellipsis,
                      ), 
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            context.read<ProviderModel>().plantData!.country,  style: TextStyle(fontSize: 18.0, color: KPrimaryColor.withOpacity(0.7) ), overflow: TextOverflow.ellipsis,
                          ),
                          Text("\$ ${context.read<ProviderModel>().plantData!.price}", style: TextStyle(fontSize: 20.0, color: KPrimaryColor.withOpacity(0.6), fontWeight: FontWeight.bold),)
                        ],
                      ), 
                    ],
                 ),
               ), 
               const SizedBox(height: 15,),
               const PaymentButtom(),
            ],
         ),
       ),
    );
  }
}