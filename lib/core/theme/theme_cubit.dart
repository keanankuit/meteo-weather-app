import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<bool> {
  // The bool state means: true = dark mode, false = light mode.
  ThemeCubit(this.preferences)
    : super(preferences.getBool('isDarkMode') ?? false);

  final SharedPreferences preferences;

  Future<void> toggleTheme() async {
    // Flip from light to dark or dark to light.
    final newValue = !state;

    // Save the choice so the app remembers it next time.
    await preferences.setBool('isDarkMode', newValue);

    // Tell the UI to rebuild with the new theme mode.
    emit(newValue);
  }
}
