import 'package:portfolio/all_imports.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget screen;

  const ResponsiveLayout({super.key, required this.screen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 680) {
          // Mobile screen route
          return screen;
        } else if (constraints.maxWidth >= 680 && constraints.maxWidth < 1200) {
          // Tablet screen route
          return Scaffold(
            body: Center(
              child: PhoneContainer(
                child: screen,
              ),
            ),
          );
        } else {
          // Desktop screen route
          return Scaffold(
            body: Center(
              child: PhoneContainer(
                child: screen,
              ),
            ),
          );
        }
      },
    );
  }
}
