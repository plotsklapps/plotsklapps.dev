import 'package:portfolio/all_imports.dart';

final eduPortfolioCarouselProvider =
    StateNotifierProvider<EduPortfolioCarouselNotifier, int>((ref) {
  return EduPortfolioCarouselNotifier();
});

class EduPortfolioCarouselNotifier extends StateNotifier<int> {
  EduPortfolioCarouselNotifier() : super(0);

  final eduPortfolioTexts = <String>[
    'Dicee is a dice rolling app. It uses the Random class to generate random numbers everytime the dices are pressed.',
    'Xylophone is an app that plays sounds when you tap on the colors. It uses the audioplayers package to play sounds.',
    'BMI Calculator is an app that calculates your Body Mass Index. It uses the math package to calculate the BMI.',
    'Weather app shows the weather of a city. It uses the http package to fetch data from the OpenWeatherMap API.',
  ];

  // List of images to display in the carousel
  final eduPortfolioImages = <String>[
    'assets/images/eduportfolio_dicee.png',
    'assets/images/eduportfolio_xylophone.png',
    'assets/images/eduportfolio_bmicalc.png',
    'assets/images/eduportfolio_weather.png',
  ];

  int setCurrentEduPortfolioIndex(int index) {
    return state = index;
  }

  int getCurrentEduPortfolioIndex() {
    return state;
  }

  String setCurrentEduPortfolioText(int index) {
    return eduPortfolioTexts[index];
  }

  String getCurrentEduPortfolioText(int index) {
    return eduPortfolioTexts[index];
  }

  String setCurrentEduPortfolioImage(int index) {
    return eduPortfolioImages[index];
  }

  String getCurrentEduPortfolioImage() {
    return eduPortfolioImages[state];
  }
}
