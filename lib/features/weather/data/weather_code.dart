enum WeatherCode {
  // Each enum value stores: API code, label for UI, and SVG asset path.
  clearSky(0, 'Clear sky', 'assets/icons/sunny.svg'),
  mainlyClear(1, 'Mainly clear', 'assets/icons/sunny.svg'),
  partlyCloudy(2, 'Partly cloudy', 'assets/icons/partly_cloudy.svg'),
  overcast(3, 'Overcast', 'assets/icons/partly_cloudy.svg'),
  fog(45, 'Fog', 'assets/icons/partly_cloudy.svg'),
  rimeFog(48, 'Depositing rime fog', 'assets/icons/partly_cloudy.svg'),
  lightDrizzle(51, 'Light drizzle', 'assets/icons/rainy.svg'),
  moderateDrizzle(53, 'Moderate drizzle', 'assets/icons/rainy.svg'),
  denseDrizzle(55, 'Dense drizzle', 'assets/icons/rainy.svg'),
  slightRain(61, 'Slight rain', 'assets/icons/rainy.svg'),
  moderateRain(63, 'Moderate rain', 'assets/icons/rainy.svg'),
  heavyRain(65, 'Heavy rain', 'assets/icons/rainy.svg'),
  slightRainShowers(80, 'Slight rain showers', 'assets/icons/rainy.svg'),
  moderateRainShowers(81, 'Moderate rain showers', 'assets/icons/rainy.svg'),
  violentRainShowers(
    82,
    'Violent rain showers',
    'assets/icons/rain_thunder.svg',
  ),
  thunderstorm(95, 'Thunderstorm', 'assets/icons/rain_thunder.svg'),
  unknown(-1, 'Unknown weather', 'assets/icons/partly_cloudy.svg');

  const WeatherCode(this.code, this.label, this.iconAsset);

  final int code;
  final String label;
  final String iconAsset;

  // Convert Open-Meteo's numeric weather_code into a WeatherCode enum.
  static WeatherCode fromJson(int code) {
    return WeatherCode.values.firstWhere(
      (weatherCode) => weatherCode.code == code,
      orElse: () => WeatherCode.unknown,
    );
  }

  // Convert the enum back to the API number if we ever serialize it.
  static int toJson(WeatherCode weatherCode) {
    return weatherCode.code;
  }
}
