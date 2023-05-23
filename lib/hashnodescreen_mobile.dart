import 'package:portfolio/all_imports.dart';

/// Hashnode URL.
final Uri hashnodeURL = Uri.parse('https://hashnode.com/@plotsklapps');

/// Hashnode mobile screen of the app.
class HashnodeScreenMobile extends StatelessWidget {
  /// Creates a new instance of [HashnodeScreenMobile].
  const HashnodeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hashnode'),
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
                  onTap: launchHashnode,
                  child: const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text('Read my tech blogs on Hashnode!'),
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
                  FontAwesomeIcons.hashnode,
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

  /// Launches plotsklapps Hashnode.
  Future<void> launchHashnode() async {
    if (!await launchUrl(hashnodeURL)) {
      throw Exception('Could not launch $hashnodeURL');
    }
  }
}
