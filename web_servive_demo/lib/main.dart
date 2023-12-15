//s61891 NUR ADIBAH BINTI ADNAN 

import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'movie.dart';

class HttpHelper {
  final String urlKey = 'api_key=c183f76f98c1d51f0e126a71ca8dacbf';
  final String urlBase = 'https://api.themoviedb.org/3/movie';
  final String urlUpcoming = '/upcoming?';
  final String urlLanguage = '&language=en-US';
  final String urlSearchBase = 'https://api.themoviedb.org/3/movie?api_key=c183f76f98c1d51f0e126a71ca8dacbf&query';

  Future<List?> getUpcoming() async { // to establish API connection
    final String upcoming =urlBase + urlUpcoming + urlKey + urlLanguage;
    var url = Uri.parse(upcoming);
    http.Response result = await http.get(url);

    if(result.statusCode == HttpStatus.ok) {
      print('#Debug http_helper.dart => statusCode OK..!');
      final jsonResponse = json.decode(result.body);
      print('#Debug http_helper.dart => jsonResponse =$jsonResponse');
      final moviesMap = jsonResponse['result'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      return null;
    }
  }

  Future<List?> findMovies(String title) async {
    final String query = urlSearchBase + title;
    http.Response result = await http.get(urlQuery);
    if (result.statusCode == HttpStatus.ok) {
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      return null;
    }
  }

}