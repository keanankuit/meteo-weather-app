import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_newest_app/features/search/data/geocoding_api.dart';
import 'package:my_newest_app/features/search/logic/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.geocodingApi) : super(const SearchState());

  final GeocodingApi geocodingApi;

  Timer? _debounceTimer;
  String _lastQuery = '';
  int _searchId = 0;

  // Called on every keystroke. It waits until typing pauses before searching.
  void searchDebounced(String query) {
    final cleanQuery = query.trim();

    // Cancel the previous pending search whenever the user keeps typing.
    _debounceTimer?.cancel();

    if (cleanQuery.length < 3) {
      // Avoid noisy API calls for "f" or "fi".
      _lastQuery = '';
      emit(const SearchState());
      return;
    }

    if (cleanQuery == _lastQuery) {
      // Do not search the same text twice.
      return;
    }

    _debounceTimer = Timer(const Duration(milliseconds: 700), () {
      search(cleanQuery);
    });
  }

  Future<void> search(String query) async {
    _lastQuery = query;

    // Search id lets us ignore old responses that finish after newer searches.
    final currentSearchId = ++_searchId;

    emit(const SearchState(isLoading: true));

    try {
      final results = await geocodingApi.searchLocations(query);

      if (currentSearchId != _searchId) {
        // A newer search started, so this older result should not update UI.
        return;
      }

      emit(SearchState(results: results));
    } catch (error) {
      if (currentSearchId != _searchId) {
        // Same stale-result guard for errors.
        return;
      }

      emit(SearchState(errorMessage: error.toString()));
    }
  }

  @override
  Future<void> close() {
    // Always cancel timers when the Cubit is destroyed.
    _debounceTimer?.cancel();
    return super.close();
  }
}
