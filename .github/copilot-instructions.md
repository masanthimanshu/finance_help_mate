# .github/copilot-instructions.md

Purpose

- Minimal, actionable guidance for AI coding agents and human contributors.

Essential commands

- Install deps: `flutter pub get`
- Analyze: `flutter analyze` or `dart analyze`
- Tests: `flutter test`
- Format: `dart format .` or `flutter format .`

Where to edit

- Edit app logic and UI under `lib/`. Avoid changing generated or platform files in `android/` and `ios/` unless necessary.

Agent guidance (concise)

- Before code changes run: `flutter pub get`, `flutter analyze`, `flutter test`.
- Keep PRs small; include an issue/link and a short description.
- Add unit tests for logic changes and widget tests for UI changes.
- Run `dart format .` before committing.

Links

- README: [README.md](README.md)
- Pubspec: [pubspec.yaml](pubspec.yaml)
- App entry: [lib/main.dart](lib/main.dart)

If this file needs adjustment, update it and notify reviewers.
