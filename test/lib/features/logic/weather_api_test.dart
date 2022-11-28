import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:weather/features/data/weather_api_exceptions.dart';
import 'package:weather/features/data/weather_api_models.dart';
import 'package:weather/features/logic/weather_api.dart';


void main() {
  group('fetchGeocode', () {
    test('returns GeocodeResponse when http response is successful',
        () async {
      final mockHTTPClient = MockClient((request) async {
        final response = [
          {
            "place_id": 12345,
            "licence": "mockLicence",
            "osm_type": "mockOsmType",
            "osm_id": 12345,
            "boundingbox": [
                "12.12345",
                "13.12345",
                "-12.12345",
                "-13.12345"
            ],
            "lat": "12.1234567",
            "lon": "21.7654321",
            "display_name": "mockDisplayName",
            "class": "mockClass",
            "type": "mockType",
            "importance": 0.12345,
            "icon": "mockIconLink"
          }
        ];
        return Response(jsonEncode(response), 200);
      });
      
      GeocodeResponse geocodeResponse = await(GeoCodeCalls.fetchGeocode(mockHTTPClient, 'testInput'));
      expect(geocodeResponse.name, 'mockDisplayName');
      expect(geocodeResponse.lat, '12.1234567');
      expect(geocodeResponse.lon, '21.7654321');
    });

    test('returns GeocodeException when http response is error',
        () async {
      final mockHTTPClient = MockClient((request) async {
        final response = [];
        return Response(jsonEncode(response), 404);
      });
      
      expect(() => GeoCodeCalls.fetchGeocode(mockHTTPClient, 'testInput'), throwsA(isA<GeocodeException>()));
    });
  });

  group('fetchPoints', () {
    test('returns PointsResponse when http response is successful',
        () async {
      final mockHTTPClient = MockClient((request) async {
        final response = {
          "@context": [],
          "id": "mockId",
          "type": "mockType",
          "geometry": {},
          "properties": {
            "@id": "mockPropertyId",
            "@type": "mockPropertyType",
            "cwa": "mockCwa",
            "forecastOffice": "mockOfficeLink",
            "gridId": "mockGridId",
            "gridX": 12,
            "gridY": 21,
            "forecast": "mockForecastLink",
            "forecastHourly": "mockForecastHourlyLink",
            "forecastGridData": "mockGridDataLink",
            "observationStations": "mockStationsLink",
            "relativeLocation": {},
        "forecastZone": "mockForecastZoneLink",
        "county": "mockCountyLink",
        "fireWeatherZone": "mockFireLink",
        "timeZone": "mockTimeZone",
        "radarStation": "mockRadarStation"
    }};
        return Response(jsonEncode(response), 200);
      });
      
      String pointsResponse = await(WeatherCalls.fetchPoints(mockHTTPClient, 'testLat', 'testLon'));
      expect(pointsResponse, 'mockForecastLink');
    });

    test('returns PointsException when http response is error',
        () async {
      final mockHTTPClient = MockClient((request) async {
        final response = {};
        return Response(jsonEncode(response), 404);
      });
      
      expect(() => WeatherCalls.fetchPoints(mockHTTPClient, 'testLat', 'testLon'), throwsA(isA<PointsException>()));
    });
  });

    group('fetchForecast', () {
    test('returns ForecastResponse when http response is successful',
        () async {
      final mockHTTPClient = MockClient((request) async {
        final response = {
          "@context": [],
          "type": "Feature",
          "geometry": {},
          "properties": {
            "updated": "mockUpdatedTime",
            "units": "us",
            "forecastGenerator": "mockForecastGenerator",
            "generatedAt": "mockGeneratedTime",
            "updateTime": "mockUpdatedTime",
            "validTimes": "mockValidTimes",
            "elevation": {},
            "periods": [
              {
                  "number": 1,
                  "name": "mockName",
                  "startTime": "startTime",
                  "endTime": "endTime",
                  "isDaytime": true,
                  "temperature": 12,
                  "temperatureUnit": "F",
                  "temperatureTrend": "mockTrend",
                  "windSpeed": "mockWindSpeed",
                  "windDirection": "mockDirection",
                  "icon": "mockIconLink",
                  "shortForecast": "mockShortForecast",
                  "detailedForecast": "mockLongForecast"
              },
              {
                  "number": 2,
                  "name": "mockName2",
                  "startTime": "startTime2",
                  "endTime": "endTime2",
                  "isDaytime": false,
                  "temperature": 21,
                  "temperatureUnit": "F",
                  "temperatureTrend": null,
                  "windSpeed": "mockWindSpeed2",
                  "windDirection": "mockDirection2",
                  "icon": "mockIconLink2",
                  "shortForecast": "mockShortForecast2",
                  "detailedForecast": "mockLongForecast2"
              }]
        }};
        return Response(jsonEncode(response), 200);
      });
      
      ForecastResponse forecastResponse = await(WeatherCalls.fetchForecast(mockHTTPClient, 'uri'));
      expect(forecastResponse.periods.length, 2);
      expect(forecastResponse.periods[0].name, 'mockName');
      expect(forecastResponse.periods[0].isDaytime, true);
      expect(forecastResponse.periods[0].temperature, 12);
      expect(forecastResponse.periods[0].windSpeed, 'mockWindSpeed');
      expect(forecastResponse.periods[0].shortForecast, 'mockShortForecast');
      expect(forecastResponse.periods[1].name, 'mockName2');
      expect(forecastResponse.periods[1].isDaytime, false);
      expect(forecastResponse.periods[1].temperature, 21);
      expect(forecastResponse.periods[1].windSpeed, 'mockWindSpeed2');
      expect(forecastResponse.periods[1].shortForecast, 'mockShortForecast2');
    });

    test('returns ForecastException when http response is error',
        () async {
      final mockHTTPClient = MockClient((request) async {
        final response = {};
        return Response(jsonEncode(response), 404);
      });
      
      expect(() => WeatherCalls.fetchForecast(mockHTTPClient, 'testUri'), throwsA(isA<ForecastException>()));
    });
  });
}