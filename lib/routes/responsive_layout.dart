import 'package:portfolio/all_imports.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 720) {
          // Mobile screen route
          return const HomeScreenMobile();
        } else if (constraints.maxWidth >= 720 && constraints.maxWidth < 1200) {
          // Tablet screen route
          return const HomeScreenTablet();
        } else {
          // Desktop screen route
          return const HomeScreenDesktop();
        }
      },
    );
  }
}
