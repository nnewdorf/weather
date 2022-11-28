class GeocodeException implements Exception {
  String message = 'Error getting geocode from Nominatim';
  GeocodeException();
}

class PointsException implements Exception {
  String message = 'Error getting points from NOAA';
  PointsException();
}

class ForecastException implements Exception {
  String message = 'Error getting forecast from NOAA';
  ForecastException();
}