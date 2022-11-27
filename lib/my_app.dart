import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
      home: const HomeScreen()
    );
  }
}

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const SettingsPage(),
    );
  }

}

// class HomeScreen extends HookWidget {
//   const HomeScreen({super.key});

//   final List<Tab> _tabList = const [
//     Tab(text: 'Hourly Summary'),
//     Tab(text: '7 Day Outlook')
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final controller = useTabController(initialLength: _tabList.length);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Weather App Demo'),
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.settings), 
//           onPressed: () => null,
//         ),
//         bottom: TabBar (
//           controller: controller,
//           tabs: _tabList,
//         ),
//       ),
//       body: TabBarView(
//         controller: controller,
//         children: _tabList.map((Tab tab) {
//               return Center(
//                 child: Text(
//                   '${tab.text!} Tab',
//                   style: Theme.of(context).textTheme.headline5,
//                 ),
//               );
//             }).toList()
//       )
//     );
//   }
// }