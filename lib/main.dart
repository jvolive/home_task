import 'package:flutter/material.dart';
import 'package:home_task/src/widgets/layouts/main_tab_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainTabView());
  }
}
