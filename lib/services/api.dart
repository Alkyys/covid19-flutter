import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class Api {
  int confirmedCase;
  int totalDeaths;
  int totalRecovered;
  int newCase;
  DateTime lastUpdate;
  List<dynamic> lastWeek;

  Future<void> getData() async {
    try {
      Response response =
          await get('https://api.covid19api.com/country/france');
      List<dynamic> data = jsonDecode(response.body);
      // print(data);
      // france metropo -> "Province": ""
      List<dynamic> frenchMetropo = [];
      data
          .map((e) => e["Province"] == "" ? frenchMetropo.add(e) : null)
          .toList();
      print(frenchMetropo.length);
      print(frenchMetropo);
      // 7 dernier resultat
      lastWeek = frenchMetropo.skip(frenchMetropo.length - 7).toList();
      print(lastWeek);
      print(lastWeek.length);
      // filed

      confirmedCase = lastWeek[6]["Confirmed"];
      totalDeaths = lastWeek[6]["Deaths"];
      totalRecovered = lastWeek[6]["Recovered"];
      newCase = lastWeek[6]["Confirmed"] - lastWeek[5]["Confirmed"];
      lastUpdate = DateTime.parse(lastWeek[6]["Date"]);

      print(confirmedCase);
      print(totalDeaths);
      print(totalRecovered);
      print(newCase);
      print(lastUpdate);
    } catch (e) {
      print('catch error: $e');
      confirmedCase = null;
      totalDeaths = null;
      totalRecovered = null;
      newCase = null;
      lastUpdate = null;
    }
  }
}
