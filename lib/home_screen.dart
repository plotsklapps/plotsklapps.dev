import 'package:portfolio/all_imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 768) {
      return const HomeScreenMobile();
    } else if (screenWidth >= 768 && screenWidth < 1199) {
      return const HomeScreenMobile();
    } else {
      return const HomeScreenMobile();
    }
  }
}
