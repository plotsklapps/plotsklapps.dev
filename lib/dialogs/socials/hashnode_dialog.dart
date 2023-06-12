import 'package:portfolio/all_imports.dart';

final Uri hashnodeURL = Uri.parse('https://hashnode.com/@plotsklapps');

Future<void> showHashnodeDialog(BuildContext context) async {
  await showModalBottomSheet<void>(
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
              child: const ListTile(
                title: Text('Hashnode'),
                subtitle: Text('Read @plotsklapps articles'),
                trailing: Icon(
                  FontAwesomeIcons.hashnode,
                  color: Color(0xFF2962FF),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Icon(FontAwesomeIcons.hashnode,
                    size: 224, color: Color(0xFF2962FF))
                .animate(
                  onPlay: (AnimationController controller) {
                    controller.repeat(
                      reverse: true,
                    );
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
