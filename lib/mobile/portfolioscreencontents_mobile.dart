import 'package:portfolio/all_imports.dart';

class PortfolioScreenContentsMobile extends StatelessWidget {
  const PortfolioScreenContentsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            const Text(
              "I've been developing apps since 2021, and I've created a few apps during my courses that are worthwile to show off. Every finished project has a short description and a link to the source code so my coding style can be reviewed/evaluated.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                onTap: () async {
                  await showEduCarouselDialog(context);
                },
                trailing: const Icon(FontAwesomeIcons.graduationCap),
                title: const Text(
                  'Educational Portfolio',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text('Apps created during courses'),
              ),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            const Card(
              child: ListTile(
                trailing: Icon(FontAwesomeIcons.store),
                title: Text(
                  'Professional Portfolio',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Live apps in the Stores'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
