import 'package:my_newest_app/features/search/data/location_result.dart';

class SearchState {
  const SearchState({
    this.isLoading = false,
    this.results = const [],
    this.errorMessage,
  });

  // True while the geocoding API is being called.
  final bool isLoading;

  // The list shown in SearchScreen.
  final List<LocationResult> results;

  // Error text shown if search fails.
  final String? errorMessage;
}
