import 'package:portfolio/all_imports.dart';

class Utils {
  // URL that leads to the BOKSklapps webapp.
  static Uri boksklappsURL = Uri.parse('https://boksklapps.web.app');

  // URL to the Dicee app source code.
  static Uri diceeURL = Uri.parse(
    'https://github.com/plotsklapps/plotsklapps.dev/blob/master/lib/mobile/diceescreen_mobile.dart',
  );

  // URL to the Xylophone app source code.
  static Uri xylophoneURL = Uri.parse(
    'https://github.com/plotsklapps/plotsklapps.dev/blob/master/lib/mobile/xylophonescreen_mobile.dart',
  );

  //URL to the BMI Calculator app source code.
  static Uri bmicalcURL = Uri.parse(
    'https://github.com/plotsklapps/plotsklapps.dev/tree/master/lib/mobile/eduprojects/bmicalc',
  );

  // Method to launch the user's email app to send an email to the developer.
  static Future<void> launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'plotsklapps@gmail.com',
    );
    await launchUrl(emailLaunchUri);
  }
}
