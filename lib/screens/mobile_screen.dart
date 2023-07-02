import 'package:portfolio/all_imports.dart';

class MobileScreen extends ConsumerStatefulWidget {
  const MobileScreen({super.key});

  @override
  ConsumerState<MobileScreen> createState() {
    return MobileScreenState();
  }
}

class MobileScreenState extends ConsumerState<MobileScreen> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController =
        PageController(initialPage: ref.read(currentPageIndexProvider));
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
        title: Image.asset(
          'assets/images/textlogo.png',
          height: kToolbarHeight * 0.8,
        ),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(),
      body: Center(
        child: PageView(
          controller: pageController,
          children: const <Widget>[
            PersonalScreen(),
            EducationScreen(),
            PortfolioScreen(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) async {
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
