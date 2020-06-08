import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Destination_Info.dart';

class Destinations with ChangeNotifier{
  List<DestinationInfo> _data = [
    DestinationInfo(
      id: "1",
      destinationName: "Kathmandu",
      description: "Kathmandu is the place where most adventures in Nepal begin, as all flights from overseas land in the city’s airport. The city’s famous Durbar Square is still undergoing restoration after the recent earthquakes, but there are many intact sites well worth exploring.",
      destinationImage: "assets/images/Kathmandu.png",
      price: "4500",
      isFavourite: false,
    ),
    DestinationInfo(
      id: "2",
      destinationName: "Patan",
      description: "Built in the 17th century, the palaces, courtyards and temples of the Patan Durbar are the city’s star attractions. Patan is one of the best places in Nepal to buy the gorgeous handmade silk saris that once were the garment of choice for the country’s royalty and aristocracy.",
      destinationImage: "assets/images/Patan.png",
      price: "4200",
      isFavourite: false,
    ),
    DestinationInfo(
      id: "3",
      destinationName: "Pokhara",
      description: "Pokhara is a city on Phewa Lake, in central Nepal. It’s known as a gateway to the Annapurna Circuit, a popular trail in the Himalayas. Tal Barahi Temple, a 2-story pagoda, sits on an island in the lake. On the eastern shore, the Lakeside district has yoga centers and restaurants.",
      destinationImage: "assets/images/pokhara.png",
      price: "3800",
      isFavourite: false,
    ),
    DestinationInfo(
      id: "4",
      destinationName: "Nagarkot",
      description: "Nagarkot is a village in central Nepal, at the rim of the Kathmandu Valley. It’s known for its views of the Himalayas, including Mount Everest to the northeast, which are especially striking at sunrise and sunset.",
      destinationImage: "assets/images/Nagarkot.png",
      price: "4700",
      isFavourite: false,
    ),
  ];

  List<DestinationInfo> get data{
    return [..._data];
  }

  DestinationInfo findById(String id)
  {
    return _data.firstWhere((destination) => destination.id == id);
  }

  List<DestinationInfo> get favoriteCategory {
    return _data.where((object) {
      return object.isFavourite;
    }).toList();
  }
}