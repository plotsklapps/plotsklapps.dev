import 'package:portfolio/all_imports.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double screenWidth = constraints.maxWidth;

        if (screenWidth >= 1200) {
          // Render desktop version
          return const HomeScreenDesktop();
        } else if (screenWidth >= 720) {
          // Render tablet version
          return const HomeScreenDesktop();
        } else {
          // Render mobile version
          return const HomeScreenMobile();
        }
      },
    );
  }
}
