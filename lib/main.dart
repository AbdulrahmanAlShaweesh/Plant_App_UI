
import 'package:flutter/material.dart';
import 'package:house_pante_app/model/plant_data.dart';
import 'package:house_pante_app/model/providerModel.dart';
import 'package:house_pante_app/screen/screen_body.dart';
import './screen/home_screen.dart';
import 'package:provider/provider.dart'; 

void main() {
  runApp(
      ChangeNotifierProvider(
        create: (context) => ProviderModel(),
        child: const HousePlantApp(), 
    )
  );
}

class HousePlantApp extends StatelessWidget {
  const HousePlantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(), 
        ScreenBody.id: (context) => const ScreenBody(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}