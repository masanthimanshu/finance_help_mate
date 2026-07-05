# AGENTS.md — Repo guidance for AI coding agents

Purpose

- Minimal, actionable guidance so coding agents are productive immediately.

Essential commands

- Install deps: `flutter pub get`
- Run app (device/emulator): `flutter run`
- Analyze: `flutter analyze` or `dart analyze`
- Tests: `flutter test`

Project overview

- Flutter app. Key entrypoint: [lib/main.dart](lib/main.dart)
- Important directories:
  - [lib/](lib/) — app source (primary editing area)
  - [lib/view/](lib/view/) — UI screens
  - [lib/controller/](lib/controller/) — controllers / business logic
  - [lib/provider/](lib/provider/) — providers / state wiring
  - [lib/model/](lib/model/) — data models
  - [lib/network/](lib/network/) — API endpoints and HTTP logic
  - `android/`, `ios/` — platform projects (treat as platform/generated files)

Conventions agents should follow

- Keep edits small and focused; prefer incremental PRs.
- Always run `flutter analyze` and `flutter test` before proposing behavior changes.
- Add unit tests for logic changes and widget tests for UI changes.
- Link to existing docs instead of copying content.
- Avoid modifying generated/platform files in `android/` and `ios/` unless required.

What to check first

- Confirm dependencies in [pubspec.yaml](pubspec.yaml).
- Inspect [lib/main.dart](lib/main.dart) for app startup and routing.
- Review screens in [lib/view/](lib/view/) to understand UI flow.
- Check for local state/storage side-effects (the app opens a Hive box named `myBox`).

CI & automation notes

- There are no workflows in `.github/workflows/` — consider adding a minimal CI that runs:
  1. `flutter pub get`
  2. `flutter analyze` / `dart analyze`
  3. `flutter test`
- Agents may propose a one-file GitHub Actions workflow (e.g., `.github/workflows/flutter-ci.yml`) that implements the above checks.

Common agent tasks (safe to perform)

- Implement or refactor widgets under [lib/](lib/).
- Implement controller/provider logic and update corresponding tests.
- Add/adjust routes in `lib/utils/routes.dart` and verify startup behavior.
- Add/update unit/widget tests in `test/` and fix test expectations.
- Suggest or add a CI workflow and basic lint/test fixes.

What to avoid without reviewer approval

- Large, cross-cutting refactors that change public APIs across many files.
- Changing platform signing, native build configs, or generated Gradle/Xcode project files.

Links

- README: [README.md](README.md)
- Pubspec: [pubspec.yaml](pubspec.yaml)
- App entry: [lib/main.dart](lib/main.dart)

Keep this file minimal and update iteratively when project conventions change.
