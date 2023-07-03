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
      bottomNavigationBar: CustomNavBar(pageController),
    );
  }
}
