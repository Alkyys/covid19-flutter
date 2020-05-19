import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class Api {
  int confirmedCase;
  int totalDeaths;
  int totalRecovered;
  int newCase;

  Future<void> getData() async {
    try {
      Response response =
          await get('https://api.covid19api.com/country/france');
      print(response.body);
//      Map data = jsonDecode(response.body);
//      print(data);

      // get properties from data
//      String datetime = data['datetime'];
//      String offset = data['utc_offset'].substring(1, 3);
      // print(datetime);
      // print(offset);

      // create DateTime Object
//      DateTime now = DateTime.parse(datetime);
//      now = now.add(Duration(hours: int.parse(offset)));
//
//      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
//      time = DateFormat.jm().format(now);
    } catch (e) {
      print('catch error: $e');
      confirmedCase = null;
      totalDeaths = null;
      totalRecovered = null;
      newCase = null;
    }
  }
}
