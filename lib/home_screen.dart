import 'package:portfolio/all_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 800) {
      return HomeScreenMobile();
    } else {
      return HomeScreenDesktop();
    }
  }
}
