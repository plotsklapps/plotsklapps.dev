import 'package:portfolio/all_imports.dart';

void showIonicNHADialog(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset('assets/certificates/IonicNHADiploma.jpg'),
              Image.asset('assets/certificates/IonicNHACijferlijst.jpg'),
            ],
          ),
        ),
      );
    },
  );
}
