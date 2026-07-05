# AGENTS.md — Repo guidance for AI coding agents

Purpose

- Provide a minimal, actionable summary so coding agents are productive immediately.

Quick commands

- Install deps: `flutter pub get`
- Run app (device/emulator): `flutter run`
- Run tests: `flutter test`

Project overview

- Flutter app. Key entrypoint: `lib/main.dart`.
- Important directories:
  - `lib/` — app source
  - `lib/controller/` — state/controllers
  - `lib/view/` — UI screens
  - `lib/provider/` — providers
  - `lib/model/` — data models
  - `android/`, `ios/` — platform projects

Conventions agents should follow

- Preserve existing file structure and naming patterns.
- Prefer small, focused edits and include tests when adding logic.
- Link to docs instead of copying them. Use relative repo links.

What to look for first

- Run `flutter analyze` and `flutter test` when adding behavior changes.
- Inspect `lib/main.dart`, `pubspec.yaml`, and `lib/view/` to understand UI entry points.

Common tasks agents can perform

- Add/modify widgets and helper functions under `lib/`.
- Implement controller/provider logic in `lib/controller/` or `lib/provider/`.
- Add unit/widget tests in `test/` corresponding to changes.

Links

- Repo README: [README.md](README.md)
- Pubspec: [pubspec.yaml](pubspec.yaml)
- App entry: [lib/main.dart](lib/main.dart)

Suggested next customizations

- Create a short `.github/copilot-instructions.md` focused on PR etiquette and testing expectations.
- Add a `skills/` file for common Flutter tasks (format, test, build).

Keep this file minimal and update iteratively.
