import 'package:portfolio/all_imports.dart';

/// Custom routes for the app.
Map<String, WidgetBuilder> customRoutes = <String, WidgetBuilder>{
  '/': (BuildContext context) {
    return const HomeScreenMobile();
  },
  '/education': (BuildContext context) {
    return const EducationScreenMobile();
  },
};
