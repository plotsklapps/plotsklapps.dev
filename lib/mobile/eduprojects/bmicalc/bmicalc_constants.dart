import 'package:portfolio/all_imports.dart';

class UtilsColor {
  static const Color kOrangeFlame = Color(0xFFD35A27);
  static const Color kGreyGunmetal = Color(0xff172734);
  static const Color kGreyCharcoal = Color(0xff32434f);
  static const Color kGreyElectricBlue = Color(0xff526e7f);
  static const Color kBackGroundGrey = Color(0xffdedede);
}

const double kBottomContainerHeight = 80.0;

TextStyle kLabelTextStyle = const TextStyle(
  fontSize: 18,
  color: UtilsColor.kBackGroundGrey,
);

TextStyle kNumberTextStyle = const TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w900,
  color: UtilsColor.kGreyGunmetal,
);

TextStyle kLargeButtonTextStyle = const TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
  color: UtilsColor.kGreyGunmetal,
);

const TextStyle kTitleTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.bold,
);

TextStyle kResultTextStyle = const TextStyle(
  color: UtilsColor.kOrangeFlame,
  fontSize: 48,
  fontWeight: FontWeight.bold,
);

const TextStyle kBMITextStyle = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.bold,
);

TextStyle kBodyTextStyle = const TextStyle(
  fontSize: 22,
  color: UtilsColor.kBackGroundGrey,
);
