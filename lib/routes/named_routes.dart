import 'package:portfolio/all_imports.dart';

Map<String, WidgetBuilder> customRoutes = <String, WidgetBuilder>{
  '/': (BuildContext context) {
    // TODO(CapturedHeart): Either you set it up like this or you use it
    //  like a constructor in code
    return const Responsive(
      desktop: HomeScreenMobile(),
      mobile: HomeScreenMobile(),
      tablet: HomeScreenMobile(),
    );
  },
  '/education': (BuildContext context) {
    return const EducationScreenMobile();
  },
};
