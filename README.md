# Finance Help Mate

> A simple, opinionated Flutter app demonstrating charts, chat, and phone-based auth for personal finance insights.

## Why this project

- Lightweight starter for finance-related Flutter apps.
- Demonstrates a practical stack: state management with `flutter_riverpod`, local persistence with `hive_flutter`, HTTP via `dio`, and interactive charts using `syncfusion_flutter_charts`.
- Includes phone/OTP auth UI, a chat interface, and home charts to visualize financial data.

## Key features

- Phone-based authentication (OTP flow) — see [lib/view/auth/phone_screen.dart](lib/view/auth/phone_screen.dart)
- Chat UI and controller logic — see [lib/view/chat/chat_screen.dart](lib/view/chat/chat_screen.dart)
- Charts and chart models — see [lib/components/home_chart.dart](lib/components/home_chart.dart) and [lib/model/chart_model.dart](lib/model/chart_model.dart)
- Local storage with Hive (`hive_flutter`) and network helpers with `dio`
- Riverpod-based state management (`flutter_riverpod`)

## Tech stack & notable dependencies

- Flutter 3.x / Dart
- flutter_riverpod — state management
- hive_flutter — local persistence
- dio — networking
- syncfusion_flutter_charts — charts
- google_fonts, font_awesome_flutter — UI polish

See full dependency list in [pubspec.yaml](pubspec.yaml).

## Getting started

Prerequisites

- Install Flutter (stable) and set up your platform tooling: https://flutter.dev/docs/get-started/install
- Ensure an emulator or device is available (Android/iOS).

Install and run

```bash
flutter pub get
flutter run
```

App entry point: [lib/main.dart](lib/main.dart). The app initializes Hive and registers routes from [lib/utils/routes.dart](lib/utils/routes.dart).

Quick notes

- The app opens a Hive box named `myBox` on startup (see `main()` in [lib/main.dart](lib/main.dart)).
- Routes are defined in [lib/utils/routes.dart](lib/utils/routes.dart) and the theme is in [lib/utils/theme.dart](lib/utils/theme.dart).

## Project structure (high level)

- `lib/main.dart` — app entry
- `lib/view/` — UI screens (auth, chat, home, splash)
- `lib/controller/` — controllers for business logic
- `lib/components/` — reusable widgets (cards, charts)
- `lib/model/` — data models
- `lib/network/` — API endpoints and network helpers
- `lib/utils/` — routing, theme, validators

## How to develop

- Run the app with `flutter run` or use your IDE's run/debug workflow.
- Use `flutter analyze` and `flutter test` to check linting and tests.
- Format code with `dart format .` or `flutter format .`.

## Contributing

Contributions are welcome. Please open issues for bugs or feature requests and submit PRs for proposed changes. If you have a `CONTRIBUTING.md`, include it at the repo root — this README will link to it automatically.

## Getting help

- Open an issue in this repository for bugs or questions.
- Inspect source files in `lib/` for implementation details.

## Maintainers

Currently maintained by the repository owner. Update the `Maintainers` section in this README with contact information or a team list as appropriate.

---

Version: 1.0.0 (from [pubspec.yaml](pubspec.yaml))
