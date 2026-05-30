import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_newest_app/core/service_locator.dart';
import 'package:my_newest_app/features/search/logic/search_cubit.dart';
import 'package:my_newest_app/features/search/presentation/search_screen.dart';
import 'package:my_newest_app/features/weather/logic/weather_cubit.dart';
import 'package:my_newest_app/features/weather/presentation/weather_screen.dart';

enum AppRoutes {
  home('/'),
  search('/search');

final String path;

const AppRoutes(this.path);

}


final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.home.path,
      builder: (context, state) {
        return BlocProvider(
          create: (context) => sl<WeatherCubit>()..loadWeatherForCurrentLocation(),
          child: const WeatherScreen(),
        );
      },
    ),
    GoRoute(
      path: AppRoutes.search.path,
      builder: (context, state) {
        return BlocProvider(
          create: (context) => sl<SearchCubit>(),
          child: const SearchScreen(),
        );
      },
    ),
  ],
);