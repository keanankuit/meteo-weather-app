import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_newest_app/features/search/logic/search_cubit.dart';
import 'package:my_newest_app/features/search/logic/search_state.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          hintText: 'Search for a city',
          // Every typed change goes to the Cubit, which debounces the API call.
          onChanged: (value) =>
              context.read<SearchCubit>().searchDebounced(value),
        ),
      ),
      body: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          // Search is currently waiting for the geocoding API.
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          // Show API/parsing/network problems without crashing.
          if (state.errorMessage != null) {
            return Center(child: Text(state.errorMessage!));
          }

          // Empty state before searching or when no locations are found.
          if (state.results.isEmpty) {
            return const Center(child: Text('No results'));
          }

          // Show each geocoding result as a tappable location.
          return ListView.builder(
            itemCount: state.results.length,
            itemBuilder: (context, index) {
              final result = state.results[index];

              return ListTile(
                title: Text(result.name),
                subtitle: Text('${result.country}, ${result.admin1}'),
                onTap: () {
                  // Return the selected LocationResult to WeatherScreen.
                  context.pop(result);
                },
              );
            },
          );
        },
      ),
    );
  }
}
