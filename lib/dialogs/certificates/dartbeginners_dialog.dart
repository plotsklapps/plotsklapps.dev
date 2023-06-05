import 'package:portfolio/all_imports.dart';

Future<void> showDartBeginnersDialog(BuildContext context) async {
  await showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/certificates/DartBeginners.jpg'),
          ],
        ),
      );
    },
  );
}
