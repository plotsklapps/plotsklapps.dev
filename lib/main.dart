import 'package:portfolio/all_imports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    // ProviderScope wraps the entire project
    // to handle state management with Riverpod.
    const ProviderScope(
      child: MainEntry(),
    ),
  );
}

class MainEntry extends ConsumerWidget {
  const MainEntry({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Plotsklapps Portfolio',
      debugShowCheckedModeBanner: false,
      // Theme, darkTheme and themeMode get their values
      // from Riverpod Providers.
      theme: ref.watch(flexSchemeLightProvider),
      darkTheme: ref.watch(flexSchemeDarkProvider),
      themeMode: ref.watch(themeModeProvider),
      initialRoute: '/',
      routes: customRoutes,
    );
  }
}
