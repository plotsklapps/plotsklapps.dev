import 'package:portfolio/all_imports.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    super.key,
    this.mobile,
    this.tablet,
    this.desktop,
  });

  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  // These booleans will come in handy later when creating our UI
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 680;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 980 &&
      MediaQuery.of(context).size.width >= 680;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 980;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // If our width is more than 980 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 980) {
          return desktop!;
        }
        // If width it less then 980 and more then 680 we consider it a tablet
        else if (constraints.maxWidth >= 680) {
          return tablet!;
        }
        // Or less then that we called it mobile
        else {
          return mobile!;
        }
      },
    );
  }
}
