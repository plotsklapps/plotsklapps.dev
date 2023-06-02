import 'package:portfolio/all_imports.dart';

Map<String, WidgetBuilder> customRoutes = <String, WidgetBuilder>{
  '/': (BuildContext context) {
    return const HomeScreenMobile();
  },
  '/education': (BuildContext context) {
    return const EducationScreenMobile();
  },
  '/portfolio': (BuildContext context) {
    return const PortfolioScreenMobile();
  },
  '/dicee': (BuildContext context) {
    return const DiceeScreenMobile();
  },
};
