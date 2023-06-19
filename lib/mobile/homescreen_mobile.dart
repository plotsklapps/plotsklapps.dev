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

  Future<void> onIconTapped(int index) async {
    setState(() {
      selectedIndex = index;
      pageController.animateToPage(
        index,
        duration: const Duration(
          seconds: 1,
        ),
        curve: Curves.bounceOut,
      );
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
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Image.asset('assets/images/textlogo.png'),
        ),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(),
      body: Stack(
        children: <Widget>[
          Center(
            child: PageView(
              controller: pageController,
              onPageChanged: (int index) async {
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
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onIconTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(FontAwesomeIcons.house),
            activeIcon: const Icon(FontAwesomeIcons.houseCircleCheck)
                .animate()
                .flip(duration: const Duration(seconds: 1)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(FontAwesomeIcons.school),
            activeIcon: const Icon(FontAwesomeIcons.schoolCircleCheck)
                .animate()
                .flip(duration: const Duration(seconds: 1)),
            label: 'Education',
          ),
          BottomNavigationBarItem(
            icon: const Icon(FontAwesomeIcons.solidFile),
            activeIcon: const Icon(FontAwesomeIcons.fileCircleCheck)
                .animate()
                .flip(duration: const Duration(seconds: 1)),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: const Icon(FontAwesomeIcons.solidEnvelope),
            activeIcon: const Icon(FontAwesomeIcons.envelopeCircleCheck)
                .animate()
                .flip(duration: const Duration(seconds: 1)),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}

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
    );
  }
}
