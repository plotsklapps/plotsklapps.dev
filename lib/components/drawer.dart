import 'package:portfolio/all_imports.dart';

class CustomDrawer extends ConsumerWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/stackedlogo.png'),
            const Divider(),
            ListTile(
              title: const Text('Current theme mode:'),
              // Icon always displays the current theme mode.
              trailing: ref.watch(isLightModeProvider)
                  ? Utils.kIconSun
                  : Utils.kIconMoon,
              onTap: () {
                // Tapping the icon will change the boolean back and forth
                // and change the icon.
                ref.read(isLightModeProvider.notifier).state =
                    !ref.read(isLightModeProvider.notifier).state;
                // Change the actual theme mode based on the boolean.
                ref.watch(isLightModeProvider)
                    ? ref.read(themeModeProvider.notifier).state =
                        ThemeMode.light
                    : ref.read(themeModeProvider.notifier).state =
                        ThemeMode.dark;
              },
            ),
          ],
        ),
      ),
    );
  }
}
