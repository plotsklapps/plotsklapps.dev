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
final StateProvider<ThemeData> flexSchemeLightProvider =
    StateProvider<ThemeData>(
  (StateProviderRef<ThemeData> ref) {
    return FlexThemeData.light(
      scheme: FlexScheme.outerSpace,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 16,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 16,
        blendTextTheme: true,
        thinBorderWidth: 2.0,
        thickBorderWidth: 4.0,
        defaultRadius: 24.0,
        unselectedToggleIsColored: true,
        sliderValueTinted: true,
        sliderTrackHeight: 5,
        inputDecoratorBorderType: FlexInputBorderType.underline,
        fabUseShape: true,
        popupMenuRadius: 12.0,
        tooltipRadius: 24,
        useInputDecoratorThemeInDialogs: true,
        snackBarRadius: 24,
        snackBarElevation: 6,
        drawerWidth: 300.0,
        menuRadius: 24.0,
        menuPadding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        menuBarRadius: 24.0,
        menuIndicatorRadius: 24.0,
        navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
        navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
        navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
        navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
        navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
        navigationBarIndicatorOpacity: 1.00,
      ),
      useMaterial3ErrorColors: true,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      // To use the playground font, add GoogleFonts package and uncomment
      fontFamily: GoogleFonts.questrial().fontFamily,
    );
  },
);

final StateProvider<ThemeData> flexSchemeDarkProvider =
    StateProvider<ThemeData>(
  (StateProviderRef<ThemeData> ref) {
    return FlexThemeData.dark(
      scheme: FlexScheme.outerSpace,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 13,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 20,
        defaultRadius: 24.0,
        thinBorderWidth: 2.0,
        thickBorderWidth: 4.0,
        unselectedToggleIsColored: true,
        sliderValueTinted: true,
        sliderTrackHeight: 5,
        inputDecoratorBorderType: FlexInputBorderType.underline,
        fabUseShape: true,
        popupMenuRadius: 12.0,
        tooltipRadius: 24,
        useInputDecoratorThemeInDialogs: true,
        snackBarRadius: 24,
        snackBarElevation: 6,
        drawerWidth: 300.0,
        menuRadius: 24.0,
        menuPadding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        menuBarRadius: 24.0,
        menuIndicatorRadius: 24.0,
        navigationBarSelectedLabelSchemeColor: SchemeColor.onSurface,
        navigationBarUnselectedLabelSchemeColor: SchemeColor.onSurface,
        navigationBarSelectedIconSchemeColor: SchemeColor.onSurface,
        navigationBarUnselectedIconSchemeColor: SchemeColor.onSurface,
        navigationBarIndicatorSchemeColor: SchemeColor.secondaryContainer,
        navigationBarIndicatorOpacity: 1.00,
      ),
      useMaterial3ErrorColors: true,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      fontFamily: GoogleFonts.notoSans().fontFamily,
    );
  },
);
