import 'package:portfolio/all_imports.dart';

/// Twitter URL.
final Uri twitterURL = Uri.parse('https://twitter.com/plotsklapps');

/// Twitter dialog.
void showTwitterDialog(BuildContext context) {
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
                  await launchUrl(twitterURL);
                } catch (error) {
                  showCustomSnack(
                    context,
                    'Could not launch Twitter: $error',
                  );
                }
              },
              child: const Text('Follow @plotsklapps on Twitter'),
            ),
            const SizedBox(height: 16),
            const Icon(FontAwesomeIcons.twitter, size: 300)
                .animate(
                  onPlay: (controller) => controller.repeat(
                    reverse: true,
                  ),
                )
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
