import 'package:portfolio/all_imports.dart';

class Utils {
  // URL that leads to the BOKSklapps webapp.
  static Uri boksklappsURL = Uri.parse(
    'https://boksklapps.app',
  );

  // URL to the Dicee app source code.
  static Uri diceeURL = Uri.parse(
    'https://github.com/plotsklapps/plotsklapps.dev/blob/master/lib/mobile/dice_screen.dart',
  );

  // URL to the Xylophone app source code.
  static Uri xylophoneURL = Uri.parse(
    'https://github.com/plotsklapps/plotsklapps.dev/blob/master/lib/mobile/xylophone_screen.dart',
  );

  //URL to the BMI Calculator app source code.
  static Uri bmicalcURL = Uri.parse(
    'https://github.com/plotsklapps/plotsklapps.dev/tree/master/lib/mobile/eduprojects/bmicalc',
  );

  // URL to the Timelapps PWA.
  static Uri timelappsURL = Uri.parse(
    'https://timelapps.app',
  );

  // Method to launch the user's email app to send an email to the developer.
  static Future<void> launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'plotsklapps@gmail.com',
    );
    await launchUrl(emailLaunchUri);
  }

  // plotsklapps brand colors.
  static Color kGunMetal = const Color(0xFF172734);
  static Color kCharcoal = const Color(0xFF32434F);
  static Color kElectricBlue = const Color(0xFF526E7F);
  static Color kFlame = const Color(0xFFD35A27);
  static Color kLightGrey = const Color(0xFFDEDEDE);

  // Strings used in the app.
  static String kFlipCardHomeScreen =
      "I'm Jeremy, a Flutter and Ionic developer from the Netherlands. I have completed various courses on Ionic, Dart & Flutter and I am currently learning more about UI/UX design with Figma. Reach out to me if you'd like to know more!";

  // Icons used in the app.
  static Icon kIconPerson = const Icon(FontAwesomeIcons.person);
  static Icon kIconPersonCheck = const Icon(FontAwesomeIcons.personCircleCheck);
  static Icon kIconEducation = const Icon(FontAwesomeIcons.school);
  static Icon kIconEducationCheck =
      const Icon(FontAwesomeIcons.schoolCircleCheck);
  static Icon kIconPortfolio = const Icon(FontAwesomeIcons.solidFile);
  static Icon kIconPortfolioCheck =
      const Icon(FontAwesomeIcons.fileCircleCheck);
  static Icon kIconContact = const Icon(FontAwesomeIcons.solidEnvelope);
  static Icon kIconContactCheck =
      const Icon(FontAwesomeIcons.envelopeCircleCheck);
  static Icon kIconSun = const Icon(FontAwesomeIcons.sun);
  static Icon kIconMoon = const Icon(FontAwesomeIcons.moon);
  static Icon kIconTwitter = const Icon(FontAwesomeIcons.twitter);
  static Icon kIconGithub = const Icon(FontAwesomeIcons.github);
  static Icon kIconHashnode = const Icon(FontAwesomeIcons.hashnode);
  static Icon kIconCircleCheck = const Icon(FontAwesomeIcons.solidCircleCheck);
  static Icon kIconCircleXMark = const Icon(FontAwesomeIcons.solidCircleXmark);
  static Icon kIconCertificate = const Icon(FontAwesomeIcons.certificate);
}
