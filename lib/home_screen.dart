import 'package:portfolio/all_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileContents: HomeScreenMobile(),
        tabletContents: HomeScreenTablet(),
        desktopContents: HomeScreenDesktop(),
      ),
    );
  }
}
