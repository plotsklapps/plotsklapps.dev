import 'package:portfolio/all_imports.dart';

/// Twitter URL.
final Uri twitterURL = Uri.parse('https://twitter.com/plotsklapps');

/// Twitter mobile screen of the app.
class TwitterScreenMobile extends StatelessWidget {
  /// Creates a new instance of [TwitterScreenMobile].
  const TwitterScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Twitter'),
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
                  onTap: launchTwitter,
                  child: const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text('Follow @plotsklapps on Twitter!'),
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
                  FontAwesomeIcons.twitter,
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

  /// Launches plotsklapps Twitter.
  Future<void> launchTwitter() async {
    if (!await launchUrl(twitterURL)) {
      throw Exception('Could not launch $twitterURL');
    }
  }
}
