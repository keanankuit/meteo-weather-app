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

  void searchDebounced(String query) {
    final cleanQuery = query.trim();

    _debounceTimer?.cancel();

    if (cleanQuery.length < 3) {
      _lastQuery = '';
      emit(const SearchState());
      return;
    }

    if (cleanQuery == _lastQuery) {
      return;
    }

    _debounceTimer = Timer(const Duration(milliseconds: 700), () {
      search(cleanQuery);
    });
  }

  Future<void> search(String query) async {
    _lastQuery = query;

    final currentSearchId = ++_searchId;

    emit(const SearchState(isLoading: true));

    try {
      final results = await geocodingApi.searchLocations(query);

      if (currentSearchId != _searchId) {
        return;
      }

      emit(SearchState(results: results));
    } catch (error) {
      if (currentSearchId != _searchId) {
        return;
      }

      emit(SearchState(errorMessage: error.toString()));
    }
  }

  @override
  Future<void> close() {
    _debounceTimer?.cancel();
    return super.close();
  }
}