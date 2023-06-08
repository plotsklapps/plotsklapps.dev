import 'package:portfolio/all_imports.dart';

final StateProvider<double> weatherTempProvider =
    StateProvider<double>((StateProviderRef<double> ref) {
  return 0.0;
});

final StateProvider<int> weatherConditionProvider =
    StateProvider<int>((StateProviderRef<int> ref) {
  return 0;
});

final StateProvider<IconData> weatherIconDataProvider =
    StateProvider<IconData>((StateProviderRef<IconData> ref) {
  return FontAwesomeIcons.solidCircleQuestion;
});

final StateProvider<double> weatherTempMinProvider =
    StateProvider<double>((StateProviderRef<double> ref) {
  return 0.0;
});

final StateProvider<double> weatherTempMaxProvider =
    StateProvider<double>((StateProviderRef<double> ref) {
  return 0.0;
});

final StateProvider<String> weatherCityNameProvider =
    StateProvider<String>((StateProviderRef<String> ref) {
  return '';
});
