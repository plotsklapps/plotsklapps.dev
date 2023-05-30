import 'package:portfolio/all_imports.dart';

void showFlutterIntermediateDialog(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/certificates/FlutterIntermediate.jpg'),
          ],
        ),
      );
    },
  );
}
