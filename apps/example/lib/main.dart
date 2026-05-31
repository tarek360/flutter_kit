import 'package:calendar_utils/calendar_utils.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:social_login/social_login.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:user_auth/user_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = FrogThemeData();
    return UIKit(
      frogThemeData: themeData,
      kitBuilder: (theme) => ChatUIKit(frogThemeData: theme),
      child: MaterialApp(
        title: 'Flutter Kit Examples',
        theme: ChatUIKit.getThemeData(Brightness.light, themeData.colorScheme, themeData.typography),
        home: const ExamplesPage(),
      ),
    );
  }
}

class ExamplesPage extends StatelessWidget {
  const ExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Kit Examples')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _CalendarUtilsSection(),
          SizedBox(height: 24),
          _CoreSection(),
          SizedBox(height: 24),
          _DesignSystemSection(),
          SizedBox(height: 24),
          _FirebasePackagesSection(),
          SizedBox(height: 24),
          _SocialLoginSection(),
          SizedBox(height: 24),
          _UiKitSection(),
          SizedBox(height: 24),
          _UiKitInterfaceSection(),
          SizedBox(height: 24),
          _UserAuthSection(),
          SizedBox(height: 24),
          _GlobalLintsSection(),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
            const Divider(height: 20),
            child,
          ],
        ),
      ),
    );
  }
}

// ─── calendar_utils ────────────────────────────────────────────────────────────

class _CalendarUtilsSection extends StatefulWidget {
  const _CalendarUtilsSection();

  @override
  State<_CalendarUtilsSection> createState() => _CalendarUtilsSectionState();
}

class _CalendarUtilsSectionState extends State<_CalendarUtilsSection> {
  final _calendar = CalendarList(initialDate: DateTime.now(), enableWeek: true);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final (weekdays, todayIndex) = getWeekdaysStartingOnMonday(now);
    final start = DateTime(now.year, now.month, now.day, 9);
    final end = DateTime(now.year, now.month, now.day, 17, 30);

    return _SectionCard(
      title: 'calendar_utils',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('getFullMonthName: ${getFullMonthName(now)}'),
          Text('formatTimeRange: ${formatTimeRange(start, end)}'),
          Text('isToday: ${now.isToday}  isTomorrow: ${now.add(const Duration(days: 1)).isTomorrow}'),
          Text(
            'isPast: ${now.subtract(const Duration(days: 1)).isPast}  isFuture: ${now.add(const Duration(days: 1)).isFuture}',
          ),
          const SizedBox(height: 12),
          Text('getWeekdaysStartingOnMonday:', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < weekdays.length; i++)
                Column(
                  children: [
                    Text(getDayOfWeekName(weekdays[i]), style: const TextStyle(fontSize: 11)),
                    const SizedBox(height: 2),
                    Container(
                      width: 28,
                      height: 28,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: i == todayIndex ? Theme.of(context).colorScheme.primary : Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        getDayOfMonth(weekdays[i]),
                        style: TextStyle(
                          color: i == todayIndex ? Colors.white : null,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
          const SizedBox(height: 12),
          Text('CalendarList (navigate weeks):', style: Theme.of(context).textTheme.labelMedium),
          Row(
            children: [
              IconButton(icon: const Icon(Icons.chevron_left), onPressed: () => setState(() => _calendar.prev())),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: _calendar.currentDays.map((d) => Text(getDayOfMonth(d))).toList(),
                ),
              ),
              IconButton(icon: const Icon(Icons.chevron_right), onPressed: () => setState(() => _calendar.next())),
            ],
          ),
          Text(getFullMonthName(_calendar.currentDays.first), style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}

// ─── core ──────────────────────────────────────────────────────────────────────

class _CoreSection extends StatefulWidget {
  const _CoreSection();

  @override
  State<_CoreSection> createState() => _CoreSectionState();
}

class _CoreSectionState extends State<_CoreSection> {
  String _logStatus = '';
  String _resultStatus = '';

  @override
  Widget build(BuildContext context) {
    return _SectionCard(
      title: 'core',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Logger', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 6),
          Wrap(
            spacing: 8,
            children: [
              ElevatedButton(
                onPressed: () {
                  Logger.d('debug message from example');
                  setState(() => _logStatus = 'Logger.d() called — check console');
                },
                child: const Text('d()'),
              ),
              ElevatedButton(
                onPressed: () {
                  Logger.i('info message from example');
                  setState(() => _logStatus = 'Logger.i() called — check console');
                },
                child: const Text('i()'),
              ),
              ElevatedButton(
                onPressed: () {
                  Logger.w('warning from example');
                  setState(() => _logStatus = 'Logger.w() called — check console');
                },
                child: const Text('w()'),
              ),
            ],
          ),
          if (_logStatus.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(_logStatus, style: Theme.of(context).textTheme.bodySmall),
          ],
          const SizedBox(height: 12),
          Text('Result<T, R>', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 6),
          Wrap(
            spacing: 8,
            children: [
              ElevatedButton(
                onPressed: () {
                  const result = Result<String, String>.success('All good!');
                  result.when(
                    success: (data) => setState(() => _resultStatus = 'success: $data'),
                    failure: (err) => setState(() => _resultStatus = 'failure: $err'),
                  );
                },
                child: const Text('Result.success'),
              ),
              ElevatedButton(
                onPressed: () {
                  const result = Result<String, String>.failure('Not found');
                  result.when(
                    success: (data) => setState(() => _resultStatus = 'success: $data'),
                    failure: (err) => setState(() => _resultStatus = 'failure: $err'),
                  );
                },
                child: const Text('Result.failure'),
              ),
            ],
          ),
          if (_resultStatus.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(_resultStatus, style: Theme.of(context).textTheme.bodySmall),
          ],
        ],
      ),
    );
  }
}

// ─── design_system ─────────────────────────────────────────────────────────────

class _DesignSystemSection extends StatefulWidget {
  const _DesignSystemSection();

  @override
  State<_DesignSystemSection> createState() => _DesignSystemSectionState();
}

class _DesignSystemSectionState extends State<_DesignSystemSection> {
  Brightness _brightness = Brightness.light;

  @override
  Widget build(BuildContext context) {
    final themeData = FrogThemeData(brightness: _brightness);

    return _SectionCard(
      title: 'design_system',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('Brightness: '),
              const SizedBox(width: 8),
              SegmentedButton<Brightness>(
                showSelectedIcon: false,
                segments: const [
                  ButtonSegment(value: Brightness.light, label: Text('Light')),
                  ButtonSegment(value: Brightness.dark, label: Text('Dark')),
                ],
                selected: {_brightness},
                onSelectionChanged: (s) => setState(() => _brightness = s.first),
              ),
            ],
          ),
          const SizedBox(height: 12),
          FrogTheme(
            data: themeData,
            child: Builder(
              builder: (ctx) {
                final colors = FrogTheme.of(ctx).colors;
                return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: colors.neutral10,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: colors.neutral30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FrogText.headlineSmall('FrogText — headlineSmall'),
                      FrogText.titleMedium('FrogText — titleMedium'),
                      FrogText.bodyLarge('FrogText — bodyLarge'),
                      FrogText.bodySmall('FrogText — bodySmall'),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 10,
                        runSpacing: 8,
                        children: [
                          _ColorTile('brand', colors.brand),
                          _ColorTile('primary100', colors.primary100),
                          _ColorTile('secondary100', colors.secondary100),
                          _ColorTile('positive140', colors.positive140),
                          _ColorTile('negative100', colors.negative100),
                          _ColorTile('neutral150', colors.neutral150),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorTile extends StatelessWidget {
  const _ColorTile(this.label, this.color);

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black12),
          ),
        ),
        const SizedBox(height: 2),
        Text(label, style: const TextStyle(fontSize: 9)),
      ],
    );
  }
}

// ─── firebase_packages ─────────────────────────────────────────────────────────

class _FirebasePackagesSection extends StatelessWidget {
  const _FirebasePackagesSection();

  @override
  Widget build(BuildContext context) {
    return _SectionCard(
      title: 'firebase_packages',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Firebase integration helpers:', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 6),
          const Text('• FcmHandler — routes foreground/background FCM messages'),
          const Text('• NotificationService — schedules and displays local notifications'),
          const Text('• NotificationPermissionHandler — requests/checks notification permissions'),
          const SizedBox(height: 12),
          Text('LougaRemoteNotification model:', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 4),
          Text('  triggerID: String?', style: Theme.of(context).textTheme.bodySmall),
          Text('  navigation: String?', style: Theme.of(context).textTheme.bodySmall),
          Text('  isBackground: bool', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 4),
          Text(
            'Requires Firebase.initializeApp() before use.',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}

// ─── social_login ──────────────────────────────────────────────────────────────

class _SocialLoginSection extends StatelessWidget {
  const _SocialLoginSection();

  @override
  Widget build(BuildContext context) {
    return _SectionCard(
      title: 'social_login',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('SocialLoginService supports:', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 4),
          ...SocialLoginType.values.map((t) => Text('  • ${t.name}')),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            children: [
              OutlinedButton.icon(
                onPressed: () {
                  // SocialLoginService().signInWithSocial(SocialLoginType.google)
                },
                icon: const Icon(Icons.login, size: 18),
                label: const Text('Google'),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  // SocialLoginService().signInWithSocial(SocialLoginType.apple)
                },
                icon: const Icon(Icons.apple, size: 18),
                label: const Text('Apple'),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Returns SocialLoginInfo { email: String, token: String, type: SocialLoginType }',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

// ─── ui_kit ────────────────────────────────────────────────────────────────────

class _UiKitSection extends StatefulWidget {
  const _UiKitSection();

  @override
  State<_UiKitSection> createState() => _UiKitSectionState();
}

class _UiKitSectionState extends State<_UiKitSection> {
  bool _switchOn = true;
  double _progress = 0.65;

  @override
  Widget build(BuildContext context) {
    return _SectionCard(
      title: 'ui_kit',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('ChatUIButton', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 8),
          ChatUIButton(onPressed: () {}, label: 'Primary Button'),
          const SizedBox(height: 8),
          ChatUIButton.secondary(onPressed: () {}, label: 'Secondary Button'),
          const SizedBox(height: 8),
          ChatUIButton.text(onPressed: () {}, label: 'Text Button'),
          const SizedBox(height: 8),
          ChatUIButton(onPressed: null, label: 'Disabled Button'),
          const SizedBox(height: 16),
          Text('ChatUICircularIndicator', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 8),
          const ChatUICircularIndicator(width: 32, height: 32),
          const SizedBox(height: 16),
          Text(
            'ChatUIProgressIndicator (${(_progress * 100).round()}%)',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          const SizedBox(height: 8),
          ChatUIProgressIndicator(progress: _progress),
          Slider(value: _progress, onChanged: (v) => setState(() => _progress = v)),
          const SizedBox(height: 8),
          Text('ChatUISwitch', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 8),
          Row(
            children: [
              ChatUISwitch(value: _switchOn, onChanged: (v) => setState(() => _switchOn = v)),
              const SizedBox(width: 8),
              Text(_switchOn ? 'On' : 'Off'),
            ],
          ),
        ],
      ),
    );
  }
}

// ─── ui_kit_interface ──────────────────────────────────────────────────────────

class _UiKitInterfaceSection extends StatefulWidget {
  const _UiKitInterfaceSection();

  @override
  State<_UiKitInterfaceSection> createState() => _UiKitInterfaceSectionState();
}

class _UiKitInterfaceSectionState extends State<_UiKitInterfaceSection> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return _SectionCard(
      title: 'ui_kit_interface',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Button (abstract, resolved via UIKit.of)', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 8),
          Button(onPressed: () {}, label: 'Primary'),
          const SizedBox(height: 8),
          Button.secondary(onPressed: () {}, label: 'Secondary'),
          const SizedBox(height: 8),
          Button.text(onPressed: () {}, label: 'Text'),
          const SizedBox(height: 16),
          Text('ButtonSize', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 8),
          Button(onPressed: () {}, label: 'Large', size: ButtonSize.large),
          const SizedBox(height: 8),
          Button(onPressed: () {}, label: 'Medium', size: ButtonSize.medium),
          const SizedBox(height: 8),
          Button(onPressed: () {}, label: 'Small', size: ButtonSize.small),
          const SizedBox(height: 16),
          Text('Loading state', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 8),
          Button(onPressed: () => setState(() => _loading = !_loading), label: 'Toggle Loading', loading: _loading),
        ],
      ),
    );
  }
}

// ─── user_auth ─────────────────────────────────────────────────────────────────

class _UserAuthSection extends StatelessWidget {
  const _UserAuthSection();

  @override
  Widget build(BuildContext context) {
    const request = LoginRequest(pinID: 'pin_abc123', pinCode: 4567);
    const otpRequest = GetOneTimePinCodeRequest(email: 'user@example.com');

    final successOutput = const LoginResponse.success(
      token: 'jwt_token_xyz',
    ).when(success: (token) => token, invalidCode: () => '', expiredCode: () => '', otherError: (_) => '');

    return _SectionCard(
      title: 'user_auth',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('LoginRequest', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 4),
          Text('  pinID: ${request.pinID}  pinCode: ${request.pinCode}', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 12),
          Text('LoginResponse variants', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 4),
          Text('  success → token: $successOutput', style: Theme.of(context).textTheme.bodySmall),
          Text('  invalidCode, expiredCode, otherError(ResultErrorType)', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 12),
          Text('GetOneTimePinCodeRequest', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 4),
          Text('  email: ${otpRequest.email}', style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(height: 12),
          Text('Also provides:', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: 4),
          Text('  • GetOneTimePinCodeResponse (ok / blocked / noUser)', style: Theme.of(context).textTheme.bodySmall),
          Text('  • LogoutRepository + use case', style: Theme.of(context).textTheme.bodySmall),
          Text('  • RefreshTokenRepository + domain model', style: Theme.of(context).textTheme.bodySmall),
          Text('  • LoginViewModel / OneTimePinCodeViewModel (Riverpod)', style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}

// ─── global_lints ──────────────────────────────────────────────────────────────

class _GlobalLintsSection extends StatelessWidget {
  const _GlobalLintsSection();

  @override
  Widget build(BuildContext context) {
    return _SectionCard(
      title: 'global_lints (dev dependency)',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Shared analysis_options.yaml applied as a dev_dependency across all packages.'),
          const SizedBox(height: 4),
          Text(
            'No runtime API — purely static analysis tooling for consistent lint rules.',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
