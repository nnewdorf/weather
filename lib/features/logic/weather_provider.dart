import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/features/data/weather_api_models.dart';
import 'package:weather/features/logic/weather_api.dart';
import 'package:weather/features/data/weather_state.dart';

final weatherNotifierProvider = StateNotifierProvider<WeatherNotifier, WeatherState>((ref) => WeatherNotifier(const WeatherState.loading()));

class WeatherNotifier extends StateNotifier<WeatherState> {
  WeatherNotifier(WeatherState state) : super(state) {
    onStartup();
  }

  Future<void> onStartup() async {
      var prefs = await SharedPreferences.getInstance();
      var forecasturi = prefs.getString('forecasturi');
      if (null == forecasturi) {
        state = const WeatherState.noLocation();
      } else {
        getForecast(forecasturi);
      }
  }

  Future<void> getForecastOnLocationUpdate(location) async {
    state = const WeatherState.loading();

    try {
      var forecasturi = await WeatherAPI.fetchLocationData(location);
      getForecast(forecasturi);
    } catch(e) {
      state = const WeatherState.error(message: 'Error attempting to get location data! Please verify location and try again.');
    }
  }

  Future<void> getForecast(forecasturi) async {
    try {
      final List<Period> periods = await WeatherAPI.fetchForecastPeriods(forecasturi);
      state = WeatherState.data(periods: periods);
    } catch(e) {
      state = const WeatherState.error(message: 'Error attempting to get forecast! Please try again later.');
    }
  }
}