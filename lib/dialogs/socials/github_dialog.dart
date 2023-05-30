import 'package:portfolio/all_imports.dart';

final Uri githubURL = Uri.parse('https://github.com/plotsklapps');

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
              child: const ListTile(
                title: Text('Github'),
                subtitle: Text('Check out @plotsklapps repositories'),
                trailing: Icon(FontAwesomeIcons.github),
              ),
            ),
            const SizedBox(height: 16),
            const Icon(FontAwesomeIcons.github, size: 300)
                .animate(
                  onPlay: (controller) {
                    controller.repeat(reverse: true);
                  },
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
                  duration: const Duration(milliseconds: 5000),
                  curve: Curves.easeInOut,
                ),
          ],
        ),
      );
    },
  );
}
