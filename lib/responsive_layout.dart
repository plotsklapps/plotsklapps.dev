import 'package:portfolio/all_imports.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobileContents,
    required this.tabletContents,
    required this.desktopContents,
  });

  final Widget mobileContents;
  final Widget tabletContents;
  final Widget desktopContents;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 600) {
          return mobileContents;
        } else if (constraints.maxWidth < 1200) {
          return tabletContents;
        } else {
          return desktopContents;
        }
      },
    );
  }
}
