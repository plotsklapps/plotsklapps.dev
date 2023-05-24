import 'package:portfolio/all_imports.dart';
import 'package:portfolio/desktop/homescreen_desktop.dart';
import 'package:portfolio/utils/responsive.dart';

/// Custom routes for the app.
Map<String, WidgetBuilder> customRoutes = <String, WidgetBuilder>{
  '/': (BuildContext context) {

    // TODO: Either you set it up like this or you use it like a constructor in code
    return const Responsive(
      desktop: HomeScreenDesktop(),
      mobile: HomeScreenMobile(),
      tablet: HomeScreenDesktop(),
    );
  },
  '/education': (BuildContext context) {
    return const EducationScreenMobile();
  },
};
