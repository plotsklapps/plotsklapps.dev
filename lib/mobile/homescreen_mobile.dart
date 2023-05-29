import 'package:portfolio/all_imports.dart';

// URL that leads to the BOKSklapps webapp.
final Uri boksklappsURL = Uri.parse('https://boksklapps.web.app');

// Method to launch the user's email app to send an email to the developer.
Future<void> launchEmail() async {
  final emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'plotsklapps@gmail.com',
    queryParameters: {'subject': 'Subject', 'body': 'Message'},
  );
  await launchUrl(emailLaunchUri);
}

class HomeScreenMobile extends ConsumerStatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  ConsumerState<HomeScreenMobile> createState() {
    return HomeScreenMobileState();
  }
}

class HomeScreenMobileState extends ConsumerState<HomeScreenMobile> {
  // Boolean that determines if the user is in light mode or dark mode.
  bool isLightMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/textlogo.png',
          fit: BoxFit.contain,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isLightMode = !isLightMode;
              });
              // Change the theme mode based on the boolean.
              isLightMode
                  ? ref.read(themeModeProvider.notifier).state = ThemeMode.light
                  : ref.read(themeModeProvider.notifier).state = ThemeMode.dark;
            },
            // Change the icon based on the boolean.
            icon: isLightMode
                ? const Icon(FontAwesomeIcons.moon)
                : const Icon(FontAwesomeIcons.sun),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: SafeArea(
        child: Padding(
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
                const SizedBox(height: 16),
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
                              subtitle: const Text('Courses I have completed'),
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
                              subtitle: const Text(
                                'Collection of my Flutter projects',
                              ),
                              trailing: const Icon(FontAwesomeIcons.suitcase),
                              onTap: () {
                                // TODO(plotsklapps): create portfolio page
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
                              subtitle: Text('Email me directly'),
                              trailing: Icon(FontAwesomeIcons.solidEnvelope),
                              onTap: launchEmail,
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
                          const FlutterLogo(size: 100).animate(
                            onPlay: (controller) {
                              controller.repeat();
                            },
                          ).shimmer(duration: const Duration(seconds: 5)),
                          const SizedBox(height: 16),
                          const Text(
                            'I am Jeremy, a Flutter developer from the '
                            'Netherlands. I have completed various courses '
                            'on Dart & Flutter and I am currently learning '
                            'more about UI/UX design with Figma. Reach out '
                            "to me if you'd like to know more!",
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
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Current project I'm working on is a boxing cardio "
                      'workout application that works on ANY device on '
                      'ANY platform:',
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
                      await launchUrl(boksklappsURL);
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
