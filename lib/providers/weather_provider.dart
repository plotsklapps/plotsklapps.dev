import 'package:portfolio/all_imports.dart';

final StateProvider<double> weatherTemperatureProvider = StateProvider<double>(
  (StateProviderRef<double> ref) {
    return 0.0;
  },
);

final StateProvider<double> weatherFeelslikeProvider = StateProvider<double>(
  (StateProviderRef<double> ref) {
    return 0.0;
  },
);

final StateProvider<String> weatherDescriptionProvider = StateProvider<String>(
  (StateProviderRef<String> ref) {
    return '';
  },
);

final StateProvider<double> weatherConditionProvider = StateProvider<double>(
  (StateProviderRef<double> ref) {
    return 0.0;
  },
);

final StateProvider<String> weatherIconProvider = StateProvider<String>(
  (StateProviderRef<String> ref) {
    return '';
  },
);

final StateProvider<String> weatherCountryProvider = StateProvider<String>(
  (StateProviderRef<String> ref) {
    return '';
  },
);

final StateProvider<String> weatherCityProvider = StateProvider<String>(
  (StateProviderRef<String> ref) {
    return '';
  },
);
