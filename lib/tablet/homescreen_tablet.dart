import 'dart:async';

import 'package:portfolio/all_imports.dart';

class HomeScreenTablet extends ConsumerStatefulWidget {
  const HomeScreenTablet({super.key});

  @override
  ConsumerState<HomeScreenTablet> createState() {
    return HomeScreenTabletState();
  }
}

class HomeScreenTabletState extends ConsumerState<HomeScreenTablet> {
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
      backgroundColor: Utils.kElectricBlue,
      body: Center(
        child: Container(
          // Set up width and height for the 'smartphone'.
          width: 400,
          height: 700,
          decoration: BoxDecoration(
            borderRadius:
                // Phones have rounded corners.
                BorderRadius.circular(40),
            // Phone body color.
            color: Utils.kGunMetal,
            boxShadow: <BoxShadow>[
              // This creates a shadow effect to give some 3D appearance
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 10,
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(
                25.0), // This gives the edge around the screen
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(24),
              ),
              child: ColoredBox(
                color: Utils.kLightGrey,
                child: const HomeScreenMobile(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
