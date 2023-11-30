import 'package:portfolio/all_imports.dart';

final StateProvider<bool> isLightModeProvider = StateProvider<bool>((_) {
  return true;
});

final StateProvider<ThemeMode> themeModeProvider =
    StateProvider<ThemeMode>((StateProviderRef<ThemeMode> ref) {
  return ThemeMode.light;
});

// Light and dark ColorSchemes made by FlexColorScheme v7.0.5.
// These ColorScheme objects require Flutter 3.7 or later.
final StateProvider<ThemeData> themeLightProvider = StateProvider<ThemeData>(
  (StateProviderRef<ThemeData> ref) {
    return FlexThemeData.light(
      scheme: FlexScheme.outerSpace,
      surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
      blendLevel: 10,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 10,
        blendOnColors: false,
        blendTextTheme: true,
        useTextTheme: true,
        thinBorderWidth: 2.0,
        thickBorderWidth: 4.0,
        defaultRadius: 24.0,
        unselectedToggleIsColored: true,
        sliderValueTinted: true,
        sliderTrackHeight: 4,
        inputDecoratorBorderType: FlexInputBorderType.underline,
        fabUseShape: true,
        popupMenuRadius: 12.0,
        alignedDropdown: true,
        tooltipRadius: 24,
        timePickerElementRadius: 12.0,
        useInputDecoratorThemeInDialogs: true,
        snackBarRadius: 12,
        snackBarElevation: 6,
        drawerElevation: 3.0,
        drawerWidth: 300.0,
        bottomSheetElevation: 3.0,
        bottomSheetModalElevation: 3.0,
        bottomNavigationBarShowSelectedLabels: false,
        menuRadius: 12.0,
        menuPadding: EdgeInsetsDirectional.fromSTEB(2, 1, 2, 2),
        menuBarRadius: 12.0,
        menuIndicatorRadius: 12.0,
        navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
        navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
        navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
        navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
        navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
        navigationBarIndicatorOpacity: 1.00,
        navigationBarHeight: 60.0,
        navigationBarLabelBehavior:
            NavigationDestinationLabelBehavior.onlyShowSelected,
        navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
        navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
        navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
        navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
        navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
        navigationRailIndicatorOpacity: 1.00,
        navigationRailBackgroundSchemeColor: SchemeColor.surface,
        navigationRailLabelType: NavigationRailLabelType.selected,
      ),
      useMaterial3ErrorColors: true,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      fontFamily: GoogleFonts.questrial().fontFamily,
    );
  },
);

final StateProvider<ThemeData> themeDarkProvider = StateProvider<ThemeData>(
  (StateProviderRef<ThemeData> ref) {
    return FlexThemeData.dark(
      scheme: FlexScheme.outerSpace,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 13,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 20,
        useTextTheme: true,
        defaultRadius: 24.0,
        thinBorderWidth: 2.0,
        thickBorderWidth: 4.0,
        unselectedToggleIsColored: true,
        sliderValueTinted: true,
        sliderTrackHeight: 4,
        inputDecoratorBorderType: FlexInputBorderType.underline,
        fabUseShape: true,
        popupMenuRadius: 12.0,
        alignedDropdown: true,
        tooltipRadius: 24,
        timePickerElementRadius: 12.0,
        useInputDecoratorThemeInDialogs: true,
        snackBarRadius: 12,
        snackBarElevation: 6,
        drawerElevation: 3.0,
        drawerWidth: 300.0,
        bottomSheetElevation: 3.0,
        bottomSheetModalElevation: 3.0,
        bottomNavigationBarShowSelectedLabels: false,
        menuRadius: 12.0,
        menuPadding: EdgeInsetsDirectional.fromSTEB(2, 1, 2, 2),
        menuBarRadius: 12.0,
        menuIndicatorRadius: 12.0,
        navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
        navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
        navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
        navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
        navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
        navigationBarIndicatorOpacity: 1.00,
        navigationBarHeight: 60.0,
        navigationBarLabelBehavior:
            NavigationDestinationLabelBehavior.onlyShowSelected,
        navigationRailSelectedLabelSchemeColor: SchemeColor.onSurface,
        navigationRailUnselectedLabelSchemeColor: SchemeColor.onSurface,
        navigationRailSelectedIconSchemeColor: SchemeColor.onSurface,
        navigationRailUnselectedIconSchemeColor: SchemeColor.onSurface,
        navigationRailIndicatorSchemeColor: SchemeColor.secondaryContainer,
        navigationRailIndicatorOpacity: 1.00,
        navigationRailBackgroundSchemeColor: SchemeColor.surface,
        navigationRailLabelType: NavigationRailLabelType.selected,
      ),
      useMaterial3ErrorColors: true,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      fontFamily: GoogleFonts.questrial().fontFamily,
    );
  },
);
