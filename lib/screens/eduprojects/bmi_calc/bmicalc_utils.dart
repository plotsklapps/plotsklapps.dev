import 'package:portfolio/all_imports.dart';

class BMICalcUtils {
  static const Color kOrangeFlame = Color(0xFFD35A27);
  static const Color kGreyGunmetal = Color(0xff172734);
  static const Color kGreyCharcoal = Color(0xff32434f);
  static const Color kGreyElectricBlue = Color(0xff526e7f);
  static const Color kBackGroundGrey = Color(0xffdedede);

  static const TextStyle kLabelTextStyle = TextStyle(
    fontSize: 18,
    color: BMICalcUtils.kBackGroundGrey,
  );

  static const TextStyle kNumberTextStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w900,
    color: BMICalcUtils.kGreyGunmetal,
  );

  static const TextStyle kLargeButtonTextStyle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: BMICalcUtils.kGreyGunmetal,
  );

  static const TextStyle kTitleTextStyle = TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle kResultTextStyle = TextStyle(
    color: BMICalcUtils.kOrangeFlame,
    fontSize: 48,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle kBMITextStyle = TextStyle(
    fontSize: 100,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle kBodyTextStyle = TextStyle(
    fontSize: 22,
    color: BMICalcUtils.kBackGroundGrey,
  );

  static const double kBottomContainerHeight = 80.0;
}
