import 'package:portfolio/all_imports.dart';

NavigationBar buildNavigationBar(WidgetRef ref) {
  return NavigationBar(
    onDestinationSelected: (int index) async {
      ref.read(currentPageIndexProvider.notifier).state = index;
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
