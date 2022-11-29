import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather/features/data/weather_api_models.dart';
import 'package:weather/features/logic/weather_api.dart';
import 'package:weather/features/data/weather_state.dart';

final weatherNotifierProvider = StateNotifierProvider<WeatherNotifier, WeatherState>((ref) => WeatherNotifier(const WeatherState.loading()));

class WeatherNotifier extends StateNotifier<WeatherState> {
  WeatherNotifier(WeatherState state) : super(state) {
    getForecastOnStartup();
  }

  Future<void> getForecastOnLocationUpdate(location) async {
    state = const WeatherState.loading();

    try {
      if(null != location){
        final List<Period> periods = await WeatherAPI.fetchForecastPeriods(location);
        state = WeatherState.data(periods: periods);
      } else {
        state = const WeatherState.noLocation();
      }
    } catch(e) {
      state = const WeatherState.error(message: 'Error attempting to get forecast! Please try again later.');
    }
  }

  Future<void> getForecastOnStartup() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var location = prefs.getString('location');
      getForecastOnLocationUpdate(location);
    } catch(e) {
      state = const WeatherState.error(message: 'Error retrieving saved settings.');
    }
  }
}