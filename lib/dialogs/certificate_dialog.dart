import 'package:portfolio/all_imports.dart';

Future<void> showCertificateDialog(BuildContext context, int index) async {
  await showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Consumer(
        builder: (
          BuildContext context,
          WidgetRef ref,
          Widget? child,
        ) {
          return Container(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    ref
                        .watch(certificateImagesProvider.notifier)
                        .certificateImagesList[index],
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
