import 'package:portfolio/all_imports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    // ProviderScope gives global access to Providers
    const ProviderScope(
      child: MainEntry(),
    ),
  );
}

/// Main entry point for the app.
class MainEntry extends ConsumerWidget {
  /// Creates a new instance of [MainEntry].
  const MainEntry({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Plotsklapps Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ref.watch(flexSchemeLightProvider),
      darkTheme: ref.watch(flexSchemeDarkProvider),
      themeMode: ref.watch(themeModeProvider),
      home: const HomeScreenMobile(),
    );
  }
}
