import 'package:portfolio/all_imports.dart';

class MobileScreen extends ConsumerWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/textlogo.png',
          height: kToolbarHeight * 0.8,
        ),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(),
      body: <Widget>[
        const PersonalScreen(),
        const EducationScreen(),
        const PortfolioScreen(),
      ][ref.watch(currentPageIndexProvider)],
      bottomNavigationBar: buildNavigationBar(ref),
    );
  }
}
