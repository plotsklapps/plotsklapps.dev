import 'package:portfolio/all_imports.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 1000) {
          // Mobile screen route
          return const HomeScreenMobile();
        } else {
          // Desktop screen route
          return const HomeScreenDesktop();
        }
      },
    );
  }
}
