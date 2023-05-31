import 'package:portfolio/all_imports.dart';

class HomeScreenDesktop extends ConsumerStatefulWidget {
  const HomeScreenDesktop({super.key});

  @override
  ConsumerState<HomeScreenDesktop> createState() {
    return HomeScreenDesktopState();
  }
}

class HomeScreenDesktopState extends ConsumerState<HomeScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/textlogo.png',
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset('assets/images/stackedlogo.png'),
              const Divider(),
              ListTile(
                title: const Text('Current theme mode:'),
                // Icon always displays the current theme mode.
                trailing: ref.watch(isLightModeProvider)
                    ? const Icon(FontAwesomeIcons.sun)
                    : const Icon(FontAwesomeIcons.moon),
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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Row of social media icons.
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
                              delay: Duration.zero,
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
                const Divider(),
                const SizedBox(height: 16),
                // Row with two columns. One holds the Education/Portfolio/
                // Contact cards, the other holds the profile text.
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Card(
                            child: ListTile(
                              title: const Text(
                                'Education',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing:
                                  const Icon(FontAwesomeIcons.graduationCap),
                              onTap: () {
                                Navigator.pushNamed(context, '/education');
                              },
                            ),
                          )
                              .animate()
                              .fade(
                                delay: const Duration(milliseconds: 2000),
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.easeInOut,
                              )
                              .slide(
                                delay: const Duration(milliseconds: 2000),
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.easeInOut,
                              ),
                          Card(
                            child: ListTile(
                              title: const Text(
                                'Portfolio',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: const Icon(FontAwesomeIcons.suitcase),
                              onTap: () {
                                Navigator.pushNamed(context, '/portfolio');
                              },
                            ),
                          )
                              .animate()
                              .fade(
                                delay: const Duration(milliseconds: 2500),
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.easeInOut,
                              )
                              .slide(
                                delay: const Duration(milliseconds: 2500),
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.easeInOut,
                              ),
                          const Card(
                            child: ListTile(
                              title: Text(
                                'Contact',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: Icon(FontAwesomeIcons.solidEnvelope),
                              onTap: Utils.launchEmail,
                            ),
                          )
                              .animate()
                              .fade(
                                delay: const Duration(milliseconds: 3000),
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.easeInOut,
                              )
                              .slide(
                                delay: const Duration(milliseconds: 3000),
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.easeInOut,
                              ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const FlutterLogo(size: 75).animate(
                                onPlay: (controller) {
                                  controller.repeat();
                                },
                              ).shimmer(
                                delay: Duration.zero,
                                duration: const Duration(seconds: 4),
                              ),
                              Image.asset(
                                'assets/images/ioniclogo.png',
                                height: 75,
                              ).animate(
                                onPlay: (controller) {
                                  controller.repeat();
                                },
                              ).shimmer(
                                delay: const Duration(seconds: 2),
                                duration: const Duration(seconds: 4),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            "I'm Jeremy, a Flutter and Ionic developer from "
                            'the Netherlands. I have completed various '
                            'courses on Ionic, Dart & Flutter and I am '
                            'currently learning more about UI/UX design '
                            "with Figma. Reach out to me if you'd like "
                            'to know more!',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ).animate().fadeIn(
                          delay: const Duration(milliseconds: 1500),
                          duration: const Duration(milliseconds: 3000),
                          curve: Curves.easeInOut,
                        ),
                  ],
                ),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                // Last column with the current project and a button to
                // open it.
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Current project I'm working on is a boxing cardio "
                      'workout application that works on ANY device on ANY '
                      'platform:',
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
                    .animate()
                    .fade(
                      delay: const Duration(milliseconds: 3500),
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                    )
                    .slide(
                      delay: const Duration(milliseconds: 3500),
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                    ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      await launchUrl(Utils.boksklappsURL);
                    } catch (error) {
                      showCustomSnack(context, 'Error opening URL: $error');
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/littleboxer.gif'),
                      const Text(
                        'BOKSKLAPPS',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
                    .animate()
                    .fade(
                      delay: const Duration(milliseconds: 4000),
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                    )
                    .slide(
                      delay: const Duration(milliseconds: 4000),
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
