import 'package:portfolio/all_imports.dart';

class PortfolioScreenMobile extends StatelessWidget {
  const PortfolioScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(FontAwesomeIcons.suitcase),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Portfolio Screen'),
        ),
      ),
    );
  }
}
