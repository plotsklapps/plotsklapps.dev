import 'dart:async';

import 'package:portfolio/all_imports.dart';

// Provider to keep track of the current page index.
final StateProvider<int> pageIndexProvider =
    StateProvider<int>((StateProviderRef<int> ref) {
  return 0;
});

class HomeScreenMobile extends ConsumerStatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  ConsumerState<HomeScreenMobile> createState() {
    return HomeScreenMobileState();
  }
}

class HomeScreenMobileState extends ConsumerState<HomeScreenMobile> {
  late PageController pageController;

  Future<void> onIconTapped(int index) async {
    // Set the pageIndexProvider to the new int value and animate the page
    // transition.
    ref.read(pageIndexProvider.notifier).state = index;
    await pageController.animateToPage(
      index,
      duration: const Duration(
        seconds: 1,
      ),
      curve: Curves.bounceOut,
    );
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // Kill the page controller when the widget is disposed.
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/textlogo.png',
          width: MediaQuery.of(context).size.width * 0.5,
        ),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(),
      body: Center(
        child: PageView(
          controller: pageController,
          onPageChanged: (int index) async {
            // Store the new int value for index on page change in the
            // pageIndexProvider.
            ref.read(pageIndexProvider.notifier).state = index;
          },
          children: const <Widget>[
            // The contents of the pages are in their own files.
            PersonalScreenContentsMobile(),
            EducationScreenContentsMobile(),
            PortfolioScreenContentsMobile(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // The currentIndex is read from the pageIndexProvider.
        currentIndex: ref.watch(pageIndexProvider),
        onTap: onIconTapped,
        items: <BottomNavigationBarItem>[
          // Icons animate on tap and receive a checkmark.
          BottomNavigationBarItem(
            icon: Utils.kIconPerson,
            activeIcon: Utils.kIconPersonCheck
                .animate()
                .flip(duration: const Duration(milliseconds: 1000)),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Utils.kIconEducation,
            activeIcon: Utils.kIconEducationCheck
                .animate()
                .flip(duration: const Duration(milliseconds: 1000)),
            label: 'Education',
          ),
          BottomNavigationBarItem(
            icon: Utils.kIconPortfolio,
            activeIcon: Utils.kIconPortfolioCheck
                .animate()
                .flip(duration: const Duration(milliseconds: 1000)),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Utils.kIconContact,
            activeIcon: Utils.kIconContactCheck
                .animate()
                .flip(duration: const Duration(milliseconds: 1000)),
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
