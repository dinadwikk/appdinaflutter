import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mwldata.dart';

Future<List<Mwldata>> fetchWatchlist() async {
  var url = Uri.parse('https://dinawatchlist.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<Mwldata> listWatchlist = [];
  for (var d in data) {
    if (d != null) {
      listWatchlist.add(Mwldata.fromJson(d));
    }
  }

  return listWatchlist;
}