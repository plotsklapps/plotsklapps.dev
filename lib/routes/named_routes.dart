import 'package:portfolio/all_imports.dart';

Map<String, WidgetBuilder> customRoutes = <String, WidgetBuilder>{
  '/': (BuildContext context) {
    return const ResponsiveLayout();
  },
  '/personal': (BuildContext context) {
    return const PersonalScreenContentsMobile();
  },
  '/education': (BuildContext context) {
    return const EducationScreenContentsMobile();
  },
  '/portfolio': (BuildContext context) {
    return const PortfolioScreenContentsMobile();
  },
  '/diceemobile': (BuildContext context) {
    return const DiceeScreenMobile();
  },
  '/xylophonemobile': (BuildContext context) {
    return const XylophoneScreenMobile();
  },
  '/bmicalcmobile': (BuildContext context) {
    return const BMICalcScreenMobile();
  },
  '/weathermobile': (BuildContext context) {
    return const WeatherLoadingScreenMobile();
  }
};
