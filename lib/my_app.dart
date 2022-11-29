import 'package:flutter/material.dart';
import 'package:weather/features/views/forecast_page.dart';
import 'package:weather/features/views/settings_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const ForecastPage(),
    );
  }
}