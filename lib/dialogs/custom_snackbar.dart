import 'package:portfolio/all_imports.dart';

void showCustomSnack(BuildContext context, String message) {
  final SnackBar snackBar = SnackBar(
    content: Text(message),
    duration: const Duration(seconds: 3),
    showCloseIcon: true,
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
