
import 'package:flutter/cupertino.dart';
import 'package:house_pante_app/model/plant_data.dart';

class ProviderModel extends ChangeNotifier {
    PlantModel? plantModel; 

    set plantData(PlantModel? plant) {
      plantModel = plant;
      notifyListeners(); 
    }

    PlantModel? get plantData {
       return plantModel; 
    }
}