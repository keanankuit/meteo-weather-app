import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_newest_app/core/app_router.dart';
import 'package:my_newest_app/core/service_locator.dart';
import 'package:my_newest_app/core/theme/theme_cubit.dart';
import 'package:my_newest_app/core/theme/themes.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ThemeCubit lives above MaterialApp because MaterialApp needs its value.
    return BlocProvider(
      create: (context) => sl<ThemeCubit>(),
      child: BlocBuilder<ThemeCubit, bool>(
        builder: (context, isDarkMode) {
          // MaterialApp.router lets go_router decide which screen is visible.
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppThemes.light,
            darkTheme: AppThemes.dark,
            // The bool from ThemeCubit controls the whole app theme.
            themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
            routerConfig: appRouter,
          );
        },
      ),
    );
  }
}
