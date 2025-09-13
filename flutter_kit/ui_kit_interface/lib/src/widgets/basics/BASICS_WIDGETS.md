# Basics Widgets Documentation

This document describes the available widgets in `flutter_kit/ui_kit_interface/lib/src/widgets/basics` and provides usage examples.

---

## Button
A customizable button supporting styles, icons, loading, and more.
```dart
Button(
  onPressed: () {},
  label: 'Click Me',
  icon: Icon(Icons.add),
  size: ButtonSize.medium,
  loading: false,
)
```

## ButtonIcon
A simple icon button.
```dart
ButtonIcon(
  onPressed: () {},
  icon: Icon(Icons.favorite),
  size: 48.0,
)
```

## DotsIndicator
Shows a row of dots for pagination.
```dart
DotsIndicator(
  dotsCount: 5,
  position: 2,
)
```

## IndeterminateLoader
Shows a loading spinner.
```dart
IndeterminateLoader()
```

## LinearIndicator
Shows a linear progress bar.
```dart
LinearIndicator(
  progress: 0.5,
  foregroundColor: Colors.blue,
  backgroundColor: Colors.grey,
)
```

## TextInput
A customizable text input field.
```dart
TextInput(
  label: 'Username',
  hint: 'Enter your username',
  onChanged: (value) {},
)
```

## Toggle
A switch/toggle widget.
```dart
Toggle(
  value: true,
  onChanged: (val) {},
)
```

## WebView
Embeds a web page.
```dart
WebView('https://flutter.dev')
```

