import 'package:portfolio/all_imports.dart';

class Utils {
  // URL that leads to the BOKSklapps webapp.
  static Uri boksklappsURL = Uri.parse('https://boksklapps.web.app');

  // Method to launch the user's email app to send an email to the developer.
  static Future<void> launchEmail() async {
    final emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'plotsklapps@gmail.com',
    );
    await launchUrl(emailLaunchUri);
  }
}
