import 'package:portfolio/all_imports.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 680) {
          // Mobile screen route
          return const MobileScreen();
        } else if (constraints.maxWidth >= 680 && constraints.maxWidth < 1200) {
          // Tablet screen route
          return const TabletScreen();
        } else {
          // Desktop screen route
          return const DesktopScreen();
        }
      },
    );
  }
}
