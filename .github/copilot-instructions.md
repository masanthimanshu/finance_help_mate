# .github/copilot-instructions.md

Purpose

- Short, actionable guidance for AI coding agents and contributors when making edits or PRs.

Quick commands

- Install deps: `flutter pub get`
- Static analysis: `flutter analyze`
- Run tests: `flutter test`
- Format code: `dart format .` or `flutter format .`

PR & Commit expectations

- Keep PRs small and focused: one logical change per PR.
- Include a short description and link to the issue or task.
- Use imperative commit messages (e.g., "Add login validation").
- If a UI change, include screenshots or short screen-recording steps.

Testing & Quality

- Add unit tests for logic changes, widget tests for UI changes.
- Run `flutter analyze` and `flutter test` locally before opening a PR.
- Prefer defensive null-safety checks and avoid workarounds that silence analyzer warnings without justification.

Formatting & Linting

- Run `dart format .` before committing. Keep edits confined to relevant files to avoid noisy diffs.

Scope & Where to Edit

- Edit source under `lib/` for app logic and UI. Avoid changing generated or platform build files in `android/` and `ios/` unless necessary.

CI expectations

- CI should pass `flutter analyze` and `flutter test`. If CI adds other checks, follow CI feedback and update the branch accordingly.

Links

- Repo README: [README.md](README.md)
- Pubspec: [pubspec.yaml](pubspec.yaml)
- App entry: [lib/main.dart](lib/main.dart)

If anything here should be stricter or more relaxed for this project, update this file and notify reviewers.
