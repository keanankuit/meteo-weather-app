import 'package:my_newest_app/features/search/data/location_result.dart';

class SearchState {
  const SearchState({
    this.isLoading = false,
    this.results = const [],
    this.errorMessage,
  });

  final bool isLoading;
  final List<LocationResult> results;
  final String? errorMessage;
}