# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Flutter monorepo of reusable packages consumed via git dependencies. All packages live under `packages/` and are versioned together (currently `0.0.11` in every `pubspec.yaml`). The `example/` app exercises all packages together.

## Common Commands

All commands must be run from within the relevant package directory (e.g., `cd packages/core`).

```bash
# Get dependencies
flutter pub get

# Analyze (run from a package dir)
flutter analyze --no-pub

# Run code generation (packages that use freezed/json_serializable/riverpod_generator)
dart run build_runner build --delete-conflicting-outputs

# Watch mode for codegen
dart run build_runner watch --delete-conflicting-outputs

# Run tests (only calendar_utils has tests)
cd packages/calendar_utils && dart test

# Check formatting across all packages
dart format --output=none --set-exit-if-changed packages/ example/

# Fix formatting
dart format packages/ example/
```

## Package Dependency Graph

```
global_lints          (no local deps — lint rules only)
design_system         → global_lints
ui_kit_interface      → design_system, global_lints
ui_kit                → design_system, ui_kit_interface, global_lints
core                  → global_lints
firebase_packages     → core, global_lints
social_login          → core, global_lints
user_auth             → core, ui_kit_interface, global_lints
calendar_utils        (pure Dart, no local deps)
```

`example/` depends on all packages above.

## Local Development with pubspec_overrides.yaml

During local development, each package has a `pubspec_overrides.yaml` that redirects git dependencies to local paths. If you add a new inter-package dependency, add a corresponding override to that package's `pubspec_overrides.yaml`. The CI workflow regenerates these files from scratch, so the checked-in overrides are for local dev only.

## Versioning

All packages share the same version. The canonical version is in `packages/core/pubspec.yaml`. When bumping the version, update all `pubspec.yaml` files and the `ref:` field in every git dependency. CI auto-tags on push to `main` when the version hasn't been tagged yet.

## Architecture

### Design System (`packages/design_system`)
Foundational token layer: `FrogTheme` / `FrogThemeData` (an `InheritedWidget`), `FrogColorScheme`, `FrogTypography`, `FrogTextTheme`. The "Frog" prefix is the design system's internal naming convention. `DefaultFrogTheme` provides light/dark defaults.

### UI Kit Interface (`packages/ui_kit_interface`)
Declares abstract widget builders (`ButtonBuilder`, `TextInputBuilder`, etc.) and the `UIKit` widget. `UIKit` wraps `FrogTheme` and an `_InheritedUIKit` that makes the concrete component set available down the tree via `UIKit.of(context)`.

### UI Kit (`packages/ui_kit`)
Concrete implementation of the component builders. `ChatUIKit` extends `UIKitComponents` and wires up all builders. `ChatUIKit.getThemeData(...)` produces a `ThemeData` for Material 3 derived from `FrogColorScheme`.

### Core (`packages/core`)
- **State types**: `XState<T>` (freezed union: initial/loading/data/error/dataAndError), `Result<T, R>` (success/failure), `FormStatus<T, F>` (form with field errors), `RemoteObjectState<T>`.
- **Caching**: `Cacheable` mixin + `GetCacheThenUpdate` for serve-cache-then-refresh patterns. Cache backed by `AppSharedPreferences` (SharedPreferences wrapper).
- **Network**: Re-exports the `network` package (external git dep at `tarek360/flutter_networking`). `RequestHeadersInterceptor` for auth headers. `ResultErrorType` maps HTTP/Dio errors to typed enum values.
- **Init**: `Core.init(ref)` must be called at app start to initialise SharedPreferences and package info.

### firebase_packages
Handles FCM push notifications (`FcmHandler`, `NotificationService`, `NotificationPermissionHandler`) using `flutter_local_notifications` + `firebase_messaging`. Uses Riverpod providers.

### user_auth
Login/logout flows, OTP, JWT decode, refresh token. Depends on `core` for network and state types, and `ui_kit_interface` for UI contracts.

### social_login
Google Sign-In and Sign in with Apple wrappers, JWT decode.

### calendar_utils
Pure Dart package (no Flutter dependency). Date/time utilities, week/month linked list structures, `DateUtils` extension on `DateTime`. Has unit tests — the only package with test coverage in CI.

## Code Generation

Packages using `freezed`, `json_serializable`, or `riverpod_generator` commit their generated files (`*.freezed.dart`, `*.g.dart`). The `global_lints` config excludes these files from analysis. Always run `build_runner` after modifying annotated classes and commit the generated output.

## Lint Rules

All packages include `packages/global_lints/lib/global_lints.yaml`. Key enforced rules: `always_declare_return_types` (error), `avoid_print` (error), `require_trailing_commas`, `prefer_final_locals`, `avoid_dynamic_calls`. Generated files are excluded. No implicit casts or implicit dynamic.
