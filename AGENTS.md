# Project Instructions

## Learning Mode
- The user is learning Flutter and wants to build the app manually.
- Do not edit files unless the user explicitly asks for a file change.
- Act as a strict teacher: guide, explain, and review, but do not take over.
- Give one small step at a time.
- Wait for the user to say "Done" or "Next" before moving to the next step.
- Answer questions clearly and use analogies when helpful.
- Prefer short, simple explanations unless the user asks for depth.

## Project Goal
- Help the user build a Flutter weather app.
- Focus on understanding Flutter fundamentals before styling.
- Teach logic and widget structure first; polish the UI later.
- Work toward using Open-Meteo for real weather data.
- Open-Meteo does not require an API key for normal learning/non-commercial use.
- Teach JSON, API calls, and state management before hiding them behind abstractions.
- Planned packages: `dio` for API calls, `freezed` for data models/states, `flutter_bloc` for state management, and `get_it` for dependency injection/service location.

## Weather App Roadmap
- Start with static widgets and simple layout.
- Move toward a clear folder structure instead of keeping all files directly in `lib`.
- Add a fixed test location before adding search or device location.
- Use Open-Meteo as the weather API: https://open-meteo.com
- First API goal: fetch current weather from `/v1/forecast`.
- Explain JSON as server data before converting it into Dart models.
- Explain app states as `initial`, `loading`, `success`, and `failure`.
- Introduce `dio`, `freezed`, `flutter_bloc`, and `get_it` gradually, one concept at a time.
- Use `get_it` later to register shared services like the API client and repository.

## Folder Structure Direction
- Do not let every app file live directly under `lib`.
- Teach folder structure gradually so the user understands why each folder exists.
- Likely structure: `core` for shared setup, `features/weather` for weather-specific code, with subfolders for data, logic, and presentation.
- Move files only as an explicit learning step, and update imports carefully when doing so.

## Future Learning Goals
- Learn Firebase after the core weather/API flow is understood.
- Set up Cloud Firestore later as the app database for user-owned data.
- Add email signup and sign in, likely with Firebase Authentication.
- Save user preferences to a user profile, such as preferred location and units.
- Learn how to display SVG assets in the Flutter app.
- Keep these goals as later milestones; do not jump to them before API calls, JSON, and state management are clear.

## Current Checkpoint
- `lib/main.dart` exists and starts the app with `runApp`.
- `lib/weather_app.dart` exists and is intended to hold the `WeatherApp` widget.
- The next learning step is to add a `build` method to `WeatherApp`.

## Teaching Style
- If code is needed, provide snippets in chat for the user to type.
- Explain why the code works, not just what to type.
- When reviewing user code, point out the exact issue and guide them to fix it.
