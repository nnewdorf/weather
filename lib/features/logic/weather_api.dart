import 'dart:convert';
import 'package:http/http.dart' as http;

// class WeatherAPI {

// }
class GeoCodeCalls {
  static fetchGeocode(inputQuery) async {
    Map nameLatLon =  {"name": "", "lat": "", "lon": ""};
    try {
      final cleanedURI = cleanURI(inputQuery);
      final response = await fetchGeocodeCall(cleanedURI);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body)[0];
        nameLatLon['name'] =  json['display_name'];
        nameLatLon['lat'] =  json['lat'];
        nameLatLon['lon'] =  json['lon'];
      }
    } catch(e) {
      throw Exception('Error getting geocode from Nominatim');
    }
    
    return nameLatLon;
  }

  static String cleanURI(inputQuery) {
    final splitQuery = inputQuery.split(' ');
    final combinedQuery = splitQuery.join('+');

    return 'https://nominatim.openstreetmap.org/search?q=$combinedQuery&format=json';
  }

  static Future<http.Response> fetchGeocodeCall(cleanedURI) {
    return http.get(Uri.parse(cleanedURI));
  }
}

class WeatherCalls {
  static fetchPoints(lat, lon) async {
    Map officeXY =  {"office": "", "x": "", "y": ""};
    try {
      final response = await fetchPointsCall(lat, lon);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body)['properties'];
        officeXY['office'] =  json['gridId'];
        officeXY['x'] =  json['gridX'];
        officeXY['y'] =  json['gridY'];
      }
    } catch(e) {
      throw Exception('Error getting points from NOAA');
    }
    
    return officeXY;
  }

  static Future<http.Response> fetchPointsCall(lat, lon) {
    String uri = 'https://api.weather.gov/points/$lat,$lon';
    return http.get(Uri.parse(uri));
  }

  static fetchForcast(office, gridX, gridY) async {
    Map forecast =  {"name": "", "temperature": ""};
    try {
      final response = await fetchForecastCall(office, gridX, gridY);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body)['properties']['periods'][0];
        forecast['name'] =  json['name'];
        forecast['temperature'] =  json['temperature'];
      }
    } catch(e) {
      throw Exception('Error getting points from NOAA');
    }
    
    return forecast;
  }

  static Future<http.Response> fetchForecastCall(office, gridX, gridY) {
    String uri = 'https://api.weather.gov/gridpoints/$office/$gridX,$gridY/forecast';
    return http.get(Uri.parse(uri));
  }
}


void main() async {
  Map responseGeocode = await GeoCodeCalls.fetchGeocode('Boston MA');
  Map responsePoints = await WeatherCalls.fetchPoints(responseGeocode['lat'], responseGeocode['lon']);
  Map responseForecast = await WeatherCalls.fetchForcast(responsePoints['office'], responsePoints['x'], responsePoints['y']);
  print(responseForecast);  
}
