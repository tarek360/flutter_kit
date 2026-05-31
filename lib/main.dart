import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      theme: ChatUIKit.getThemeData(Brightness.light, ChatUIKitColors.light, DefaultFrogTheme.typography),
      darkTheme: ChatUIKit.getThemeData(Brightness.dark, ChatUIKitColors.dark, DefaultFrogTheme.typography),
      builder: (context, child) {
        return UIKit(
          frogThemeData: FrogThemeData(
            brightness: Brightness.dark,
            resourcesPackage: 'resources',
            typography: DefaultFrogTheme.typography,
            scriptCategory: ScriptCategory.englishLike,
          ),
          kitBuilder: (data) => ChatUIKit(frogThemeData: data),
          child: AppResponsiveWrapper.builder(
            context,
            child,
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double _dotsPosition = 0;
  double _progress = 0.3;
  bool _toggleValue = false;
  String _textInputValue = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _nextDot() {
    setState(() {
      _dotsPosition = (_dotsPosition + 1) % 5;
    });
  }

  void _increaseProgress() {
    setState(() {
      _progress += 0.1;
      if (_progress > 1.0) _progress = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: FrogText.labelMedium(widget.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Button Example
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FrogText.labelMedium('Button'),
                  const SizedBox(height: 8),
                  Button(
                    onPressed: _incrementCounter,
                    label: 'Counter: $_counter',
                    iconBefore: true,
                    icon: const Icon(Icons.add),
                    size: ButtonSize.medium,
                    loading: false,
                  ),
                ],
              ),
            ),
          ),
          // ButtonIcon Example
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FrogText.labelMedium('ButtonIcon'),
                  const SizedBox(height: 8),
                  ButtonIcon(
                    onPressed: _incrementCounter,
                    icon: const Icon(Icons.favorite, color: Colors.pink),
                    size: 48.0,
                  ),
                ],
              ),
            ),
          ),
          // DotsIndicator Example
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FrogText.labelMedium('DotsIndicator'),
                  const SizedBox(height: 8),
                  DotsIndicator(
                    dotsCount: 5,
                    position: _dotsPosition,
                  ),
                  const SizedBox(height: 8),
                  Button(
                    onPressed: _nextDot,
                    label: 'Next Dot',
                    size: ButtonSize.small,
                  ),
                ],
              ),
            ),
          ),
          // IndeterminateLoader Example
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FrogText.labelMedium('IndeterminateLoader'),
                  const SizedBox(height: 8),
                  const IndeterminateLoader(),
                ],
              ),
            ),
          ),
          // LinearIndicator Example
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FrogText.labelMedium('LinearIndicator'),
                  const SizedBox(height: 8),
                  LinearIndicator(
                    progress: _progress,
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.grey[300],
                  ),
                  const SizedBox(height: 8),
                  Button(
                    onPressed: _increaseProgress,
                    label: 'Increase Progress',
                    size: ButtonSize.small,
                  ),
                ],
              ),
            ),
          ),
          // TextInput Example
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FrogText.labelMedium('TextInput'),
                  TextInput(
                    label: 'Enter text',
                    hint: 'Type something...',
                    onChanged: (val) {
                      setState(() {
                        _textInputValue = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          // Toggle Example
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FrogText.labelMedium('Toggle'),
                  const SizedBox(height: 8),
                  Toggle(
                    value: _toggleValue,
                    onChanged: (val) {
                      setState(() {
                        _toggleValue = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          // WebView Example
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FrogText.labelMedium('WebView'),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 200,
                    child: WebView('https://flutter.dev'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
