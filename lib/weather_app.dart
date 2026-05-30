import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_newest_app/core/service_locator.dart';
import 'package:my_newest_app/core/theme/theme_cubit.dart';
import 'package:my_newest_app/core/theme/themes.dart';
import 'package:my_newest_app/features/weather/logic/weather_cubit.dart';
import 'package:my_newest_app/features/weather/presentation/weather_screen.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ThemeCubit>(),
      child: BlocBuilder<ThemeCubit, bool>(
        builder: (context, isDarkMode) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppThemes.light,
            darkTheme: AppThemes.dark,
            themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
            home: BlocProvider(
              create: (context) => sl<WeatherCubit>()..loadWeather(),
              child: const WeatherScreen(),
            ),
          );
        },
      ),
    );
  }
}
