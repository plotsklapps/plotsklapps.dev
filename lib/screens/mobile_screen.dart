import 'package:portfolio/all_imports.dart';

class MobileScreen extends ConsumerStatefulWidget {
  const MobileScreen({super.key});

  @override
  ConsumerState<MobileScreen> createState() {
    return MobileScreenState();
  }
}

class MobileScreenState extends ConsumerState<MobileScreen> {
  // Instantiate a PageController to have access to animations during
  // navigation.
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    // Starting index = always 0.
    pageController =
        PageController(initialPage: ref.read(currentPageIndexProvider));
  }

  @override
  void dispose() {
    // Kill the PageController.
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/textlogo.png',
          // Get the height of the AppBar so the logo is never too
          // big or too small.
          height: kToolbarHeight * 0.8,
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: ref.watch(isLightModeProvider)
                  ? Utils.kIconSun
                  : Utils.kIconMoon,
              onPressed: () {
                // Tapping the icon will change the boolean back
                // and forth and change the icon.
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
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        children: const <Widget>[
          PersonalScreen(),
          EducationScreen(),
          PortfolioScreen(),
        ],
      ),
      bottomNavigationBar: CustomNavBar(pageController),
    );
  }
}
