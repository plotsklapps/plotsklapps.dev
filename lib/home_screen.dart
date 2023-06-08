import 'dart:async';

import 'package:portfolio/all_imports.dart';

class HomeScreenMobile extends ConsumerStatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  ConsumerState<HomeScreenMobile> createState() {
    return HomeScreenMobileState();
  }
}

class HomeScreenMobileState extends ConsumerState<HomeScreenMobile> {
  int selectedIndex = 0;
  late PageController pageController;

  void onIconTapped(int index) {
    setState(() {
      selectedIndex = index;
      unawaited(pageController.animateToPage(
        index,
        duration: const Duration(
          seconds: 1,
        ),
        curve: Curves.bounceOut,
      ));
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/textlogo.png'),
        centerTitle: true,
      ),
      drawer: Drawer(
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
      body: Center(
        child: PageView(
          controller: pageController,
          onPageChanged: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          children: const <Widget>[
            HomeScreenContentsMobile(),
            EducationScreenContentsMobile(),
            PortfolioScreenContentsMobile(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onIconTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.houseChimneyWindow),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.graduationCap),
            label: 'Education',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.briefcase),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidEnvelope),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
