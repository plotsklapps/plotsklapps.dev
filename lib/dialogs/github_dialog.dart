import 'package:portfolio/all_imports.dart';

/// Github URL.
final Uri githubURL = Uri.parse('https://github.com/plotsklapps');

/// Github dialog.
void showGithubDialog(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                try {
                  await launchUrl(githubURL);
                } catch (error) {
                  showCustomSnack(
                    context,
                    'Could not launch Github: $error',
                  );
                }
              },
              child: const Text('Check out @plotsklapps repositories'),
            ),
            const SizedBox(height: 16),
            const Icon(FontAwesomeIcons.github, size: 300)
                .animate()
                .flip(
                  duration: const Duration(milliseconds: 1000),
                )
                .slideX(
                  delay: const Duration(milliseconds: 1000),
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOut,
                )
                .shimmer(
                  delay: const Duration(milliseconds: 2000),
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.easeInOut,
                ),
          ],
        ),
      );
    },
  );
}
