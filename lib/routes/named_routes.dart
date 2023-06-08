import 'package:portfolio/all_imports.dart';
import 'package:portfolio/mobile/eduprojects/weather/weatherloading_screen.dart';

Map<String, WidgetBuilder> customRoutes = <String, WidgetBuilder>{
  '/': (BuildContext context) {
    return const HomeScreenMobile();
  },
  '/home': (BuildContext context) {
    return const HomeScreenContentsMobile();
  },
  '/education': (BuildContext context) {
    return const EducationScreenContentsMobile();
  },
  '/portfolio': (BuildContext context) {
    return const PortfolioScreenContentsMobile();
  },
  '/dicee': (BuildContext context) {
    return const DiceeScreenMobile();
  },
  '/xylophone': (BuildContext context) {
    return const XylophoneScreenMobile();
  },
  '/bmicalc': (BuildContext context) {
    return const BMICalcScreenMobile();
  },
  '/weather': (BuildContext context) {
    return const WeatherLoadingScreenMobile();
  },
};
