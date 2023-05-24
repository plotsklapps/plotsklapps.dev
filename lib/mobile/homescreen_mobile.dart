import 'package:portfolio/all_imports.dart';
import 'package:portfolio/dialogs/hashnode_dialog.dart';

/// Home screen of the app.
class HomeScreenMobile extends ConsumerStatefulWidget {
  /// Creates a new instance of [HomeScreenMobile].
  const HomeScreenMobile({super.key});

  @override
  ConsumerState<HomeScreenMobile> createState() {
    return _HomeScreenMobileState();
  }
}

class _HomeScreenMobileState extends ConsumerState<HomeScreenMobile> {
  bool isLightMode = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/textlogo.png',
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isLightMode = !isLightMode;
                });
                ref.read(themeModeProvider.notifier).state =
                    isLightMode ? ThemeMode.light : ThemeMode.dark;
              },
              icon: Icon(
                isLightMode ? FontAwesomeIcons.moon : FontAwesomeIcons.sun,
              ),
            ),
          ],
        ),
        drawer: const Drawer(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          showTwitterDialog(context);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.twitter,
                        ).animate().flip(
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.easeInOut,
                            ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          showGithubDialog(context);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.github,
                        ).animate().flip(
                              delay: const Duration(milliseconds: 500),
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.easeInOut,
                            ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          showHashnodeDialog(context);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.hashnode,
                        ).animate().flip(
                              delay: const Duration(milliseconds: 1000),
                              duration: const Duration(milliseconds: 1000),
                              curve: Curves.easeInOut,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
