import 'package:flutter/material.dart';
import 'package:my_newest_app/weather_app.dart';
import 'package:my_newest_app/core/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final preferences = await SharedPreferences.getInstance();

  setupServiceLocator(preferences);

  runApp(const WeatherApp());
}