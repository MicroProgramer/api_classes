import 'dart:convert';
import 'dart:developer';

import 'package:api_classes/models/properties_response.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../models/Room.dart';

class HotelsController extends GetxController {
  void fetchHotels(String rid, DateTime checkInDate, DateTime checkOutDate, List<Room> rooms, int minPrice, int maxPrice) async {

    var body = jsonEncode({
      "currency": "USD",
      "eapid": 1,
      "locale": "en_US",
      "siteId": 300000001,
      "destination": {"regionId": rid},
      "checkInDate": {"day": checkInDate.day, "month": checkInDate.month, "year": checkInDate.year},
      "checkOutDate": {"day": checkOutDate.day, "month": checkOutDate.month, "year": checkOutDate.year},
      "resultsStartingIndex": 0,
      "resultsSize": 200,
      "sort": "PRICE_LOW_TO_HIGH",
      "filters": {
        "price": {"max": maxPrice, "min": minPrice}
      },
      "rooms": rooms.map((e) => e.toMap()).toList()
    });

    print(body);
    var response = await http.post(Uri.parse('https://hotels4.p.rapidapi.com/properties/v2/list'),
        body: body,
        headers: {
          'content-type': 'application/json',
          'X-RapidAPI-Key': 'ab4726e386msheba5cd55f042ab2p143d5ejsn7d164704e513',
          'X-RapidAPI-Host': 'hotels4.p.rapidapi.com'
        });

    log("${response.statusCode}: ${response.body}");
    var obj = PropertiesResponse.fromJson(jsonDecode(response.body));
    print(obj.data.propertySearch.properties.length);
  }

  @override
  void onInit() {
    fetchHotels(
        '6054439',
        DateTime(2022, 10, 10),
        DateTime(2022, 10, 15),
        [
          Room(adults: 5, children: [Children(age: 5), Children(age: 7)])
        ],
        100,
        150);
    super.onInit();
  }
}
