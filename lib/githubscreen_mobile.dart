import 'package:portfolio/all_imports.dart';

/// Github URL.
final Uri githubURL = Uri.parse('https://github.com/plotsklapps');

/// Github mobile screen of the app.
class GithubScreenMobile extends StatelessWidget {
  /// Creates a new instance of [GithubScreenMobile].
  const GithubScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Github'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: launchGithub,
                  child: const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text('Check out @plotsklapps repositories!'),
                    ),
                  ).animate().flip(
                        delay: const Duration(milliseconds: 1000),
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeInOut,
                      ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  FontAwesomeIcons.github,
                  size: 300,
                ).animate().flip(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeInOut,
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Launches plotsklapps Github.
  Future<void> launchGithub() async {
    if (!await launchUrl(githubURL)) {
      throw Exception('Could not launch $githubURL');
    }
  }
}
