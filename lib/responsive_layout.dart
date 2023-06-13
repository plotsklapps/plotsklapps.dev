import 'package:portfolio/all_imports.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 1024) {
      return const HomeScreenDesktop();
    } else if (screenWidth > 720 && screenWidth <= 1024) {
      return const HomeScreenDesktop();
    } else {
      return const HomeScreenMobile();
    }
  }
}
