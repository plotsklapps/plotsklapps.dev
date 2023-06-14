import 'package:portfolio/all_imports.dart';
import 'package:portfolio/mobile/eduprojects/weather/weatherloading_screen.dart';

Map<String, WidgetBuilder> customRoutes = <String, WidgetBuilder>{
  '/': (BuildContext context) {
    return const ResponsiveLayout();
  },
  '/desktop': (BuildContext context) {
    return const HomeScreenDesktop();
  },
  // '/tablet': (BuildContext context) {
  // TODO(plotsklapps): Add tablet version.
  // },
  '/home': (BuildContext context) {
    return const HomeScreenContentsMobile();
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
  '/diceedesktop': (BuildContext context) {
    return const DiceeScreenDesktop();
  },
  '/xylophonemobile': (BuildContext context) {
    return const XylophoneScreenMobile();
  },
  '/xylophonedesktop': (BuildContext context) {
    return const XylophoneScreenDesktop();
  },
  '/bmicalcmobile': (BuildContext context) {
    return const BMICalcScreenMobile();
  },
  '/bmicalcdesktop': (BuildContext context) {
    return const BMICalcScreenDesktop();
  },
  '/weather': (BuildContext context) {
    return const WeatherLoadingScreenMobile();
  },
};
