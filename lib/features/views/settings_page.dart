import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SettingsPage extends HookWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cityController = useTextEditingController(text: '');

    handleSubmit() {
      if (cityController.text.isNotEmpty) {
        return null;
      }
    }

    return Center (
      child: Column(
        children: [
          TextFormField(
            controller: cityController,
            decoration: const InputDecoration(labelText: 'City'),
          ),
          ElevatedButton(
            onPressed: handleSubmit,
            child: const Text('Save New Ctiy')
          )
        ],
      )
    );
  }
}