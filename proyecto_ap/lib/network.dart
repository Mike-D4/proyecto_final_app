import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:webfeed/webfeed.dart';

Future<RssFeed> getNews() async {
  var response = await http.get(Uri.encodeFull("https://www.rionegro.com.ar/feed/rss2/"));
  //Para analizar la cadena de datos obtenida
  return RssFeed.parse(response.body);
}