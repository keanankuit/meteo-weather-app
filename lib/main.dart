import 'package:flutter/material.dart';
import 'package:my_newest_app/app/weather_app.dart';
import 'package:my_newest_app/core/di/service_locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  // Plugin setup must happen before we use packages like SharedPreferences.
  WidgetsFlutterBinding.ensureInitialized();

  // SharedPreferences is our tiny on-device storage for simple settings.
  final preferences = await SharedPreferences.getInstance();

  // Register shared app services before any widgets try to read them.
  setupServiceLocator(preferences);

  // Start Flutter with our root widget.
  runApp(const WeatherApp());
}
