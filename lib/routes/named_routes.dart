import 'package:portfolio/all_imports.dart';

Map<String, WidgetBuilder> customRoutes = <String, WidgetBuilder>{
  '/': (BuildContext context) {
    return const HomeScreenMobile();
  },
  '/education': (BuildContext context) {
    return const EducationScreenMobile();
  },
};
