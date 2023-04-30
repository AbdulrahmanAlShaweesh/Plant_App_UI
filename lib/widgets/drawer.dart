
import 'package:flutter/material.dart';
import 'package:house_pante_app/model/providerModel.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children:  [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://blog.logrocket.com/wp-content/uploads/2021/04/Building-Flutter-desktop-app-tutorial-examples.png")
              )
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0, 
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(context.read<ProviderModel>().plantData!.imageUrl),
                      ),
                      const SizedBox(height: 5,), 
                      Text(context.read<ProviderModel>().plantData!.name, style: const TextStyle(fontSize: 16,),),
                      const SizedBox(height: 5,),
                      Text(context.read<ProviderModel>().plantData!.country), 
                    ],
                  ),
                ), 
                
              ],
            ),
          )
        ],
      ),
    );
  }
}