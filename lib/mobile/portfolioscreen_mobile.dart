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
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                "I've been developing apps since 2021, and I've created a few apps during my courses that are worthwile to show off. Every finished project has a short description and a link to the source code so my coding style can be reviewed/evaluated.",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Card(
                child: ListTile(
                  trailing: Icon(FontAwesomeIcons.graduationCap),
                  title: Text(
                    'Educational Portfolio',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Apps created during courses'),
                ),
              ),
              SizedBox(height: 16),
              Divider(),
              SizedBox(height: 16),
              Card(
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
      ),
    );
  }
}
