import 'package:portfolio/all_imports.dart';

NavigationBar buildNavigationBar(WidgetRef ref, PageController pageController) {
  return NavigationBar(
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
  );
}
