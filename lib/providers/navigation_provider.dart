import 'package:portfolio/all_imports.dart';

// Provider to keep track of the current page index.
final StateProvider<int> currentPageIndexProvider =
    StateProvider<int>((StateProviderRef<int> ref) {
  return 0;
});
