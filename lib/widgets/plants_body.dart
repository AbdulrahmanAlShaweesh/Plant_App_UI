
// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:house_pante_app/constants/constants_colors.dart';
import 'package:house_pante_app/model/plant_data.dart';
import 'package:house_pante_app/model/providerModel.dart';
import 'package:house_pante_app/screen/screen_body.dart';
import "package:provider/provider.dart"; 

class PlantsBody extends StatelessWidget {
  const PlantsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    height: MediaQuery.of(context).size.height * 0.35, 
    // color: Color.fromRGBO(244, 67, 54, 1),
    child:  ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: plats.length,
      itemBuilder: (context, index){
        return GestureDetector(
          onTap: (){
             Provider.of<ProviderModel>(context, listen: false).plantData = plats[index];
             Navigator.pushNamed(context, ScreenBody.id);
          },
          child: Container(
            margin: const EdgeInsets.only(top: 10, left: 10),
            width: 240, 
            // color: Colors.green,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0.0, 
                  left: 0.0, 
                  right: 0.0,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10), 
                      boxShadow: [
                        BoxShadow(
                          color: KPrimaryColor.withOpacity(0.3), 
                          offset: const Offset(0,2), 
                          blurRadius: 10
                        )
                      ]
                    ),
                    // margin: EdgeInsets.only(left: 10, right: 10),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center, 
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 130,
                                child: Text(plats[index].name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis,),
                              ),
                              const SizedBox(height: 5,),
                              Text(plats[index].country, style: TextStyle(fontSize: 18, color: KPrimaryColor.withOpacity(0.5)),), 
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text("\$${plats[index].price}", style: TextStyle(fontSize: 18, color: KPrimaryColor.withOpacity(0.5)),),
                          )
                        ],
                      ),
                    ),
                  ),
                ), 
                Container(
                  margin: const EdgeInsets.only(left:10),
                  height:MediaQuery.of(context).size.height * 0.24,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10), 
                      topRight: Radius.circular(10)
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(plats[index].imageUrl), 
                    )
                  ),
                ), 
              ],
            ),
          ),
        );
      })
    );
  }
}