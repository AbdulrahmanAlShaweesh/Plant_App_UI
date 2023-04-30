
class PlantModel {
  String imageUrl; 
  String name; 
  String country; 
  double price; 

  PlantModel({
    required this.imageUrl, 
    required this.name, 
    required this.country, 
    required this.price
  });
}

List<PlantModel> plats = [
  PlantModel(
    imageUrl: "https://images.pexels.com/photos/2146109/pexels-photo-2146109.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", 
    name: "White Flower Vases", 
    country: "Russia", 
    price: 14.85
    ),
  PlantModel(
    imageUrl: "https://images.pexels.com/photos/3401172/pexels-photo-3401172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", 
    name: "Green-leafed Plant on White Vase", 
    country: "Russia", 
    price: 24.45
    ),
  PlantModel(
    imageUrl: "https://images.pexels.com/photos/2791031/pexels-photo-2791031.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", 
    name: "Brown Flower Pot", 
    country: "Romania", 
    price: 22.85
  ),
  PlantModel(
    imageUrl: "https://images.pexels.com/photos/2084255/pexels-photo-2084255.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", 
    name: "Close-Up Photo of Potted Plant", 
    country: "Romania", 
    price: 8.78
  ), 
  PlantModel(
    imageUrl: "https://images.pexels.com/photos/8485804/pexels-photo-8485804.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", 
    name: "Succulent Plant in a White Pot", 
    country: "Romania", 
    price: 54.2
  ),
];