import 'package:portfolio/all_imports.dart';
import 'package:portfolio/dialogs/hashnode_dialog.dart';

final Uri boksklappsURL = Uri.parse('https://boksklapps.web.app');

class HomeScreenMobile extends ConsumerStatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  ConsumerState<HomeScreenMobile> createState() {
    return HomeScreenMobileState();
  }
}

class HomeScreenMobileState extends ConsumerState<HomeScreenMobile> {
  bool isLightMode = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                const Divider(),
                const ExpansionTile(
                  title: Text('About plotsklapps'),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterLogo(),
                        SizedBox(width: 16),
                        Text('I am Jeremy, a Flutter Developer'),
                        SizedBox(width: 16),
                        FlutterLogo(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('from the Netherlands.')],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('I have completed various courses on'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dart & Flutter and I am currently'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('learning about UI/UX design with Figma.'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Please reach out to me on Twitter if you'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('want to know more about me.'),
                      ],
                    ),
                  ],
                )
                    .animate()
                    .fade(
                      delay: const Duration(milliseconds: 1500),
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                    )
                    .slide(
                      delay: const Duration(milliseconds: 1500),
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                    ),
                Card(
                  child: ListTile(
                    title: const Text('Education'),
                    subtitle: const Text('Courses I have completed'),
                    leading: const Icon(FontAwesomeIcons.graduationCap),
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
                    title: const Text('Portfolio'),
                    subtitle: const Text('Collection of my Flutter projects'),
                    leading: const Icon(FontAwesomeIcons.suitcase),
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
                Card(
                  child: ListTile(
                    title: const Text('Contact'),
                    subtitle: const Text('How to reach out to me'),
                    leading: const Icon(FontAwesomeIcons.solidEnvelope),
                    onTap: () {
                      // TODO(plotsklapps): create contact page
                    },
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
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Current project I'm working on is a",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'boxing cardio workout application that works',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'on ANY device on ANY platform:',
                        ),
                      ],
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
