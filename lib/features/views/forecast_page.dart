import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather/features/data/weather_api_models.dart';
import 'package:weather/features/logic/weather_provider.dart';
import 'package:weather/features/views/settings_page.dart';

class ForecastPage extends StatelessWidget {
  const ForecastPage({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsButton = IconButton(
      onPressed: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SettingsPage()
        )
      );        
      },
      icon: const Icon(Icons.settings)
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Forecast'),
        actions: [settingsButton]
      ),
      body: const ForecastWidget()
    );
  }

}

class ForecastWidget extends ConsumerWidget {
  const ForecastWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weather = ref.watch(weatherNotifierProvider);
    
    return weather.when(
      data: (periods) => dataPage(periods),
      noLocation: () => noLocationPage(context),
      loading: () => loadingPage(),
      error: (errorMessage) => errorPage(errorMessage)
    );
  }

  Widget errorPage(errorMessage) {
    return Center(
      child: Text(errorMessage)
    );
  }

  Widget loadingPage() {
    return const Center(
      child: CircularProgressIndicator()
    );
  }

  Widget noLocationPage(context) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SettingsPage()
        )
      );
    });
    return loadingPage();
  }

  Widget dataPage(periods) {
    return ListView.builder(
      itemCount: periods.length,
      itemBuilder: (context, index) {
        var period = periods[index];
        return ListTile(
          title: Text('${period.name} ${period.temperature.toString()}\u00B0'),
          subtitle: Text(period.shortForecast)
        );       
      }
    );
  } 
}