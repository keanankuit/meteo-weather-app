import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_newest_app/core/theme/theme_cubit.dart';
import 'package:my_newest_app/features/weather/logic/weather_cubit.dart';
import 'package:my_newest_app/features/weather/logic/weather_state.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: BlocBuilder<WeatherCubit, WeatherState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const CircularProgressIndicator();
              }

              if (state.errorMessage != null) {
                return Text(state.errorMessage!);
              }

              final weather = state.weather;

              if (weather == null) {
                return const Text('No weather loaded yet');
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.deepOrange),
                      const SizedBox(width: 8),
                      const Text(
                        'Fisherhaven',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          context.read<ThemeCubit>().toggleTheme();
                        },
                        icon: BlocBuilder<ThemeCubit, bool>(
                          builder: (context, isDarkMode) {
                            return Icon(
                              isDarkMode ? Icons.light_mode : Icons.dark_mode,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      SvgPicture.asset(
                        weather.weatherCode.iconAsset,
                        width: 96,
                        height: 96,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        '${weather.temperature} °C',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 72,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        weather.weatherCode.label,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 1,
                    children: [
                      _WeatherInfoCard(
                        icon: Icons.water_drop_outlined,
                        label: 'DEW POINT',
                        value: '${weather.dewPoint}',
                        unit: '°C',
                      ),
                      _WeatherInfoCard(
                        icon: Icons.cloud_outlined,
                        label: 'CLOUD COVER',
                        value: '${weather.cloudCover}',
                        unit: '%',
                      ),
                      _WeatherInfoCard(
                        icon: Icons.air,
                        label: 'WIND',
                        value: '${weather.windSpeed}',
                        unit: 'km/h',
                      ),
                      _WeatherInfoCard(
                        icon: Icons.thunderstorm_outlined,
                        label: 'RAIN',
                        value: '${weather.rain}',
                        unit: 'mm',
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _WeatherInfoCard extends StatelessWidget {
  const _WeatherInfoCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.unit,
  });

  final IconData icon;
  final String label;
  final String value;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon),
            const Spacer(),
            FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                label,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 12,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text.rich(
              TextSpan(
                text: value,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: ' $unit',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
