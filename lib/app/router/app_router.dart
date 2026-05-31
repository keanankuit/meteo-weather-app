import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_newest_app/core/di/service_locator.dart';
import 'package:my_newest_app/features/search/logic/search_cubit.dart';
import 'package:my_newest_app/features/search/presentation/search_screen.dart';
import 'package:my_newest_app/features/weather/logic/weather_cubit.dart';
import 'package:my_newest_app/features/weather/presentation/weather_screen.dart';

enum AppRoutes {
  home('/'),
  search('/search');

  const AppRoutes(this.path);

  final String path;
}

// All app navigation lives here. This keeps WeatherApp focused on app setup.
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.home.path,
      builder: (context, state) {
        // The weather screen owns a WeatherCubit while this route is active.
        return BlocProvider(
          create: (context) =>
              sl<WeatherCubit>()..loadWeatherForCurrentLocation(),
          child: const WeatherScreen(),
        );
      },
    ),
    GoRoute(
      path: AppRoutes.search.path,
      builder: (context, state) {
        // Search gets its own Cubit so search state stays separate.
        return BlocProvider(
          create: (context) => sl<SearchCubit>(),
          child: const SearchScreen(),
        );
      },
    ),
  ],
);
