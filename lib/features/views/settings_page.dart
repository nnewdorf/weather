import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather/features/logic/weather_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Settings()
    );
  }
}

class Settings extends HookConsumerWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationController = useTextEditingController(text: '');

    handleSubmit() async {
      if (locationController.text.isNotEmpty) {
        ref.read(weatherNotifierProvider.notifier).getForecastOnLocationUpdate(locationController.text);
      }
    }

    return Padding (
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: locationController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Location',
              labelText: 'Location',
              suffixIcon: IconButton(
                onPressed: () => locationController.clear(),
                icon: const Icon(Icons.clear)
              )
            ),
          ),
          ElevatedButton(
            onPressed: handleSubmit,
            child: const Text('Save New Location')
          )
        ],
      )
    );
  }
}