import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/features/data/weather_api_models.dart';
import 'package:weather/features/data/weather_api_exceptions.dart';

class WeatherAPI {
  static fetchForecastPeriods(forecasturi) async {
    final client = ClientWithUserAgent();

    var responseForecast = await WeatherCalls.fetchForecast(client, forecasturi);
    return responseForecast;
  }

  static fetchLocationData(input) async {
    final client = ClientWithUserAgent();
    var responseGeocode = await GeoCodeCalls.fetchGeocode(client, input);
    var responsePoints = await WeatherCalls.fetchPoints(client, responseGeocode.lat,responseGeocode.lon);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('forecasturi', responsePoints);
    return responsePoints;
  }
}

class ClientWithUserAgent extends http.BaseClient {
  final http.Client _client = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.headers['User-Agent'] = 'weatherdemoapp';
    return _client.send(request);
  }
}

class GeoCodeCalls {
  static fetchGeocode(client, inputQuery) async {
    var geocodeResponse = GeocodeResponse();
    try {
      final response = await fetchGeocodeCall(client, inputQuery);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body)[0];
        geocodeResponse.name =  json['display_name'];
        geocodeResponse.lat =  json['lat'];
        geocodeResponse.lon =  json['lon'];
      } else {
        throw GeocodeException();  
      }
    } catch(e) {
      rethrow;
    }
    
    return geocodeResponse;
  }

  static Future<http.Response> fetchGeocodeCall(client, inputQuery) {
    final splitQuery = inputQuery.split(' ');
    final combinedQuery = splitQuery.join('+');
    final uri = 'https://nominatim.openstreetmap.org/search?q=$combinedQuery&format=json';
    return client.get(Uri.parse(uri));
  }
}

class WeatherCalls {
  static fetchPoints(client, lat, lon) async {
    var pointsResponse = '';
    try {
      final response = await fetchPointsCall(client, lat, lon);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body)['properties'];
        pointsResponse = json['forecast']; 
      } else {
        throw PointsException();
      }
    } catch(e) {
      rethrow;
    }
    
    return pointsResponse;
  }

  static Future<http.Response> fetchPointsCall(client, lat, lon) {
    final uri = 'https://api.weather.gov/points/$lat,$lon';
    return client.get(Uri.parse(uri));
  }

  static fetchForecast(client, uri) async {
    List<Period> periods = [];
    try {
      final response = await fetchForecastCall(client, uri);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body)['properties']['periods'];
        for(var period in json){
          periods.add(Period.fromJson(period));
        }
      } else {
        throw ForecastException();
      }
    } catch(e) {
      rethrow;
    }

    return periods;
  }

  static Future<http.Response> fetchForecastCall(client, uri) {
    return client.get(Uri.parse(uri));
  }
}
