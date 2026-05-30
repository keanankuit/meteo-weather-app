import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<bool> {
  ThemeCubit(this.preferences)
    : super(preferences.getBool('isDarkMode') ?? false);

  final SharedPreferences preferences;

  Future<void> toggleTheme() async {
    final newValue = !state;

    await preferences.setBool('isDarkMode', newValue);

    emit(newValue);
  }
}