import 'package:portfolio/all_imports.dart';

final Uri xURL = Uri.parse('https://x.com/plotsklapps');

Future<void> showXDialog(BuildContext context) async {
  await showModalBottomSheet<void>(
    useRootNavigator: true,
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
                  await launchUrl(xURL);
                } catch (error) {
                  showCustomSnack(
                    context,
                    'Could not launch Twitter: $error',
                  );
                }
              },
              child: ListTile(
                title: const Text('X'),
                subtitle: const Text('Reach out to @plotsklapps'),
                trailing: Icon(
                  FontAwesomeIcons.xTwitter,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Icon(
              FontAwesomeIcons.xTwitter,
              size: 224,
              color: Colors.black.withOpacity(0.7),
            )
                .animate(
                  onPlay: (AnimationController controller) {
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
