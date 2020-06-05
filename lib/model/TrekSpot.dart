import 'package:flutter/cupertino.dart';
import 'package:tourapp/model/Trekking_Info.dart';

class TrekSpot with ChangeNotifier{
  List<TrekkingInfo> _trekSpot = [
    TrekkingInfo(
      id: "1",
      TrekkingSpot:
          "Annapurna",
      desc: "The Annapurna Circuit is a trek within the mountain ranges of central Nepal. The total length of the route varies between 160–230 km, depending on where motor transportation is used and where the trek is ended. This trek crosses two different river valleys and encircles the Annapurna Massif.",
      TrekSpotImage: "assets/images/trek/Annapurna.png",
      isBookMark: false,
    ),
    TrekkingInfo(
      id: "2",
      TrekkingSpot:
      "Langtang",
      desc: "Langtang was a village development committee in Rasuwa District in the Bagmati Zone of northern Nepal. At the time of the 1991 Nepal census it had a population of 468 people living in 100 individual households.",
      TrekSpotImage: "assets/images/trek/Langtang.png",
      isBookMark: false,
    ),
    TrekkingInfo(
      id: "3",
      TrekkingSpot:
      "Mustang",
      desc: "Mustang District is one of the seventy-seven districts of Nepal. It covers an area of 3,573 km² and has a population of 13,452. The headquarters is Jomsom. The district is in Dhawalagiri Zone and part of Gandaki Pradesh in northern Nepal, straddles the Himalayas and extends northward onto the Tibetan Plateau.",
      TrekSpotImage: "assets/images/trek/Mustang.png",
      isBookMark: false,
    ),
    TrekkingInfo(
      id: "4",
      TrekkingSpot:
      "Tea House",
      desc: "Teahouses in Nepal are small lodges where you can eat and drink and stay along the trekking trails in most of the areas of Nepal. The Nepalese use the word “Bhatti”, which translates as “teahouse”, and the teahouses are now well established along many of the trails in Nepal. Treks in Nepal are mostly long ones, especially in the mountains, taking anything from 6-21 days. And for those that do not want to camp out in the mountains, teahouses are the perfect option for a good meal and a bed to sleep in.",
      TrekSpotImage: "assets/images/trek/TeaHouse.png",
      isBookMark: false,
    ),
  ];

  List<TrekkingInfo> get trek {
      return [..._trekSpot];
  }

  TrekkingInfo findById(String id)
  {
    return _trekSpot.firstWhere((trek) => trek.id == id);
  }
}
