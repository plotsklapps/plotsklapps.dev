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
      ),
      drawer: const CustomDrawer(),
      body: PageView(
        controller: pageController,
        children: const <Widget>[
          PersonalScreen(),
          EducationScreen(),
          PortfolioScreen(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) async {
          // This is where we needed the PageController for. First, we
          // set the new page index to the Riverpod Provider.
          // Second, we use that new index to navigate to the
          // corresponding widget in the PageView with a nice animation.
          ref.read(currentPageIndexProvider.notifier).state = index;
          await pageController.animateToPage(
            ref.watch(currentPageIndexProvider),
            duration: const Duration(
              milliseconds: 1000,
            ),
            curve: Curves.bounceOut,
          );
        },
        // The currentIndex is read from the pageIndexProvider.
        selectedIndex: ref.watch(currentPageIndexProvider),
        destinations: <Widget>[
          // Icons animate on tap and receive a checkmark.
          NavigationDestination(
            icon: Utils.kIconPerson,
            selectedIcon: Utils.kIconPersonCheck
                .animate()
                .flip(duration: const Duration(milliseconds: 1000)),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Utils.kIconEducation,
            selectedIcon: Utils.kIconEducationCheck
                .animate()
                .flip(duration: const Duration(milliseconds: 1000)),
            label: 'Education',
          ),
          NavigationDestination(
            icon: Utils.kIconPortfolio,
            selectedIcon: Utils.kIconPortfolioCheck
                .animate()
                .flip(duration: const Duration(milliseconds: 1000)),
            label: 'Portfolio',
          ),
        ],
      ),
    );
  }
}
