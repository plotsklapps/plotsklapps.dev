import 'package:portfolio/all_imports.dart';

/// Hashnode URL.
final Uri hashnodeURL = Uri.parse('https://hashnode.com/@plotsklapps');

/// Github dialog.
void showHashnodeDialog(BuildContext context) {
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
                  await launchUrl(hashnodeURL);
                } catch (error) {
                  showCustomSnack(
                    context,
                    'Could not launch Hashnode: $error',
                  );
                }
              },
              child: const Text('Read @plotsklapps blog posts'),
            ),
            const SizedBox(height: 16),
            const Icon(FontAwesomeIcons.hashnode, size: 300)
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
