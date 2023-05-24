import 'package:portfolio/all_imports.dart';

/// Customized snackbar to avoid 'Don't use 'BuildContext's across async gaps'
/// warnings.
void showCustomSnack(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(message),
    duration: const Duration(seconds: 3),
    showCloseIcon: true,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
