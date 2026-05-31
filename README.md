# flutter_kit

A Flutter monorepo of reusable packages for building production apps. All packages are versioned together and consumed via git dependencies.

## Packages

| Package | Description |
| --- | --- |
| [`core`](packages/core) | Foundation: state types, networking, caching, shared preferences, app lifecycle |
| [`design_system`](packages/design_system) | Frog design tokens: color schemes, typography, theme, base widgets |
| [`ui_kit_interface`](packages/ui_kit_interface) | Abstract component contracts (`UIKit`, `ButtonBuilder`, `TextInputBuilder`, etc.) |
| [`ui_kit`](packages/ui_kit) | Concrete `ChatUIKit` implementation of `ui_kit_interface` |
| [`user_auth`](packages/user_auth) | Login, logout, OTP, JWT decode, token refresh flows |
| [`social_login`](packages/social_login) | Google Sign-In and Sign in with Apple |
| [`firebase_packages`](packages/firebase_packages) | FCM push notifications with local notifications and permission handling |
| [`calendar_utils`](packages/calendar_utils) | Pure Dart date/time utilities and week/month linked list structures |
| [`global_lints`](packages/global_lints) | Shared lint rules included by all packages |

## Using a Package

Add to your `pubspec.yaml`:

```yaml
dependencies:
  core:
    git:
      url: https://github.com/tarek360/flutter_kit.git
      ref: 0.0.11
      path: packages/core
```

Replace `core` and `path` with the desired package. Use the same `ref` for all flutter_kit packages in a project.

## Local Development

Clone the repo. Each package has a `pubspec_overrides.yaml` that redirects inter-package git dependencies to local paths — no changes needed to develop locally.

```bash
# Install dependencies for a package
cd packages/core
flutter pub get

# Analyze
flutter analyze --no-pub

# Run codegen (packages using freezed / json_serializable / riverpod_generator)
dart run build_runner build --delete-conflicting-outputs

# Run tests
cd packages/calendar_utils
dart test
```

## Architecture

### State types (`core`)

- **`Result<T, R>`** — `success(T)` / `failure(R)`. Used for repository return values.
- **`XState<T>`** — `initial` / `loading` / `data` / `error` / `dataAndError`. Used for UI state in ViewModels.
- **`FormStatus<T, F>`** — holds form data, submission status, field-level errors, and a global error.
- **`RemoteObjectState<T>`** — `loading` / `data` / `error` for single remote objects.

### Caching (`core`)

The `Cacheable` mixin and `GetCacheThenUpdate<T, U>` implement a serve-cache-then-refresh pattern. Cached objects are stored in `AppSharedPreferences` (SharedPreferences) with a timestamp. Cache freshness is controlled by `getMinLifetime()` / `getMaxLifetime()`.

### Design system / UI Kit

`FrogThemeData` holds the color scheme and typography. `UIKit` is an `InheritedWidget` that wraps `FrogTheme` and makes a set of concrete component builders available via `UIKit.of(context)`. Apps provide a `kitBuilder` to swap in their own implementation — `ChatUIKit` is the built-in one.

### Environments

Set via `--dart-define=ENVIRONMENT=prod` (values: `local`, `test`, `staging`, `prod`). Defaults to `local`. Some error messages are expanded in non-prod environments.

### Networking (`core`)

Re-exports the [`network`](https://github.com/tarek360/flutter_networking) package. `RequestHeadersInterceptor` injects `Authorization: Bearer <token>`, `Accept`, and `app-info` headers on every request.

## Versioning

All packages share the same version. The canonical source is `version:` in `packages/core/pubspec.yaml`. Update all `pubspec.yaml` files and every `ref:` when bumping. CI auto-creates a git tag on push to `main` when the version is new.
