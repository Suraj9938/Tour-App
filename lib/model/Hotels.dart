import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourapp/model/Hotel_Info.dart';

class Hotels with ChangeNotifier{
  List<HotelInfo> _hotel = [
    HotelInfo(
      id: "1",
      hotelName: "Flying Yak Hotel",
      hotelImage: "assets/images/hotels/FlyingYak.png",
      location: "Thamel, Kathmandu",
      hotelDescription: "Situated in Kathmandu, 2.5 km from Hanuman Dhoka, Flying Yak Kathmandu features air-conditioned accommodation and a bar. Among the facilities of this property are a restaurant, a 24-hour front desk and room service, along with free WiFi. The accommodation provides a concierge service, a tour desk and currency exchange for guests. Flying Yak Kathmandu offers a terrace."
          "Swayambhu is 2.6 km from the accommodation, while Kathmandu Durbar Square is 3 km from the property.",
      price: "4200",
      isFavourite: false,
      isBookMark: false,
    ),
    HotelInfo(
      id: "2",
      hotelName: "Heranya Yala Hotel",
      hotelImage: "assets/images/hotels/HeranyaYala.png",
      location: "Bouddha, Kathmandu",
      hotelDescription: "Set within 400 m of Patan Durbar Square and 5 km of Hanuman Dhoka, Heranya Yala provides rooms with air conditioning and a private bathroom in Kathmandu. The property is located 6 km from Kathmandu Durbar Square, 7 km from Pashupatinath and 8 km from Swayambhu. The accommodation offers a 24-hour front desk, airport transfers, room service and free WiFi throughout the property."
          "Guest rooms at the hotel come with a seating area. The units will provide guests with a desk and a kettle.",
      price: "8200",
      isFavourite: false,
      isBookMark: false,
    ),
    HotelInfo(
      id: "3",
      hotelName: "Jampa Hotel",
      hotelImage: "assets/images/hotels/Jampa.png",
      location: "Bouddha, Kathmandu",
      hotelDescription: "Hotel Jampa is set in Thamel and provides air-conditioned rooms with free WiFi. The property is 2.9 km from Kathmandu Durbar Square and 3.1 km from Swayambhunath Temple."
          "All units in the hotel are fitted with a flat-screen TV with satellite channels. Rooms are fitted with a private bathroom and a shower.",
      price: "9400",
      isFavourite: false,
      isBookMark: false,
    ),
    HotelInfo(
      id: "4",
      hotelName: "MileStone Hotel",
      hotelImage: "assets/images/hotels/MileStoneHotel.png",
      location: "Thamel, Kathmandu",
      hotelDescription: "Conveniently situated in the centre of Kathmandu, The Milestone Hotel provides air-conditioned rooms, a bar and a shared lounge. Among the facilities of this property are a restaurant, a 24-hour front desk and room service, along with free WiFi."
          "The Milestone Hotel offers a terrace. The area is popular for cycling, and bike hire and car hire are available at the accommodation.",
      price: "7380",
      isFavourite: false,
      isBookMark: false,
    ),
    HotelInfo(
      id: "5",
      hotelName: "Sapana Garden Hotel",
      hotelImage: "assets/images/hotels/SapanaGarden.png",
      location: "Thamel, Kathmandu",
      hotelDescription: "Offering free pick up from airport to hotel, Hotel Sapana Garden is conveniently located in the heart of Kathmandu, a 15-minute walk from Hanuman Dhoka. This property is situated a short distance from attractions such as Kathmandu Durbar Square. Free WiFi is offered."
          "A buffet breakfast can be enjoyed at the property. Guests can enjoy free pick up service from Kathmandu airport to the hotel.",
      price: "8600",
      isFavourite: false,
      isBookMark: false,
    ),
  ];

  List<HotelInfo> get hotel {
    return [..._hotel];
  }

  HotelInfo findById(String id)
  {
    return _hotel.firstWhere((hotel) => hotel.id == id);
  }

  List<HotelInfo> get favoriteCategory {
    return _hotel.where((object) {
      return object.isFavourite;
    }).toList();
  }

  List<HotelInfo> get bookMarkCategory {
    return _hotel.where((object) {
      return object.isBookMark;
    }).toList();
  }

}