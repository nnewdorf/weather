import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather/features/data/weather_api_models.dart';

class WeatherAPI {
  static getForecast(input) async {
      var responseGeocode = await GeoCodeCalls.fetchGeocode(input);
      var responsePoints = await WeatherCalls.fetchPoints(responseGeocode.lat,responseGeocode.lon);
      var responseForecast = await WeatherCalls.fetchForecast(responsePoints.office, responsePoints.gridX, responsePoints.gridY);
      return responseForecast;
  }
}

class GeoCodeCalls {
  static fetchGeocode(inputQuery) async {
    var geocodeResponse = GeocodeResponse();
    try {
      final cleanedURI = cleanURI(inputQuery);
      final response = await fetchGeocodeCall(cleanedURI);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body)[0];
        geocodeResponse.name =  json['display_name'];
        geocodeResponse.lat =  json['lat'];
        geocodeResponse.lon =  json['lon'];
      } else {
        throw Exception();  
      }
    } catch(e) {
      throw Exception('Error getting geocode from Nominatim');
    }
    
    return geocodeResponse;
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
    var pointsResponse = PointsResponse();
    try {
      final response = await fetchPointsCall(lat, lon);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body)['properties'];
        pointsResponse.office =  json['gridId'];
        pointsResponse.gridX =  json['gridX'].toString();
        pointsResponse.gridY =  json['gridY'].toString();
      } else {
        throw Exception();
      }
    } catch(e) {
      throw Exception('Error getting points from NOAA');
    }
    
    return pointsResponse;
  }

  static Future<http.Response> fetchPointsCall(lat, lon) {
    final uri = 'https://api.weather.gov/points/$lat,$lon';
    return http.get(Uri.parse(uri));
  }

  static fetchForecast(office, gridX, gridY) async {
    List<Period> periods = [];
    try {
      final response = await fetchForecastCall(office, gridX, gridY);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body)['properties']['periods'];
        for(var period in json){
          Period.fromJson(period);
        }
      } else {
        throw Exception();
      }
    } catch(e) {
      throw Exception('Error getting forecast from NOAA');
    }

    final forecastResponse = ForecastResponse(periods: periods);
    return forecastResponse;
  }

  static Future<http.Response> fetchForecastCall(office, gridX, gridY) {
    final uri = 'https://api.weather.gov/gridpoints/$office/$gridX,$gridY/forecast';
    return http.get(Uri.parse(uri));
  }
}