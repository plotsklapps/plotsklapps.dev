import 'package:portfolio/all_imports.dart';

final StateNotifierProvider<EduPortfolioCarouselNotifier, int>
    eduPortfolioCarouselProvider =
    StateNotifierProvider<EduPortfolioCarouselNotifier, int>(
        (StateNotifierProviderRef<EduPortfolioCarouselNotifier, int> ref) {
  return EduPortfolioCarouselNotifier();
});

class EduPortfolioCarouselNotifier extends StateNotifier<int> {
  EduPortfolioCarouselNotifier() : super(0);

  final List<String> eduPortfolioTexts = <String>[
    'Dicee is a dice rolling app. It uses the Random class to generate random numbers everytime the dices are pressed.',
    'Xylophone is an app that plays sounds when you tap on the colors. It uses the just_audio package to play sounds.',
    'BMI Calculator is an app that calculates your Body Mass Index. It uses the math package to calculate the BMI.',
    'Weather app shows the weather of a city. It uses the http package to fetch data from the OpenWeatherMap API.',
  ];

  // List of images to display in the carousel
  final List<String> eduPortfolioImages = <String>[
    'assets/images/eduportfolio_dicee.png',
    'assets/images/eduportfolio_xylophone.png',
    'assets/images/eduportfolio_bmicalc.png',
    'assets/images/eduportfolio_weather.png',
  ];

  // Method to set the current INDEX of the carousel
  // Usage: ref.read(eduPortfolioCarouselProvider.notifier)
  // .setCurrentEduPortfolioIndex(index);
  int setCurrentEduPortfolioIndex(int index) {
    return state = index;
  }

  // Method to get the current INDEX of the carousel
  // Usage: ref.watch(eduPortfolioCarouselProvider);
  int getCurrentEduPortfolioIndex() {
    return state;
  }

  // Method to set the current TEXT of the carousel
  // Usage: ref.read(eduPortfolioCarouselProvider.notifier)
  // .setCurrentEduPortfolioText(index);
  String setCurrentEduPortfolioText(int index) {
    return eduPortfolioTexts[index];
  }

  // Method to get the current TEXT of the carousel
  // Usage: ref.watch(eduPortfolioCarouselProvider.notifier)
  // .getCurrentEduPortfolioText();
  String getCurrentEduPortfolioText(int index) {
    return eduPortfolioTexts[index];
  }

  // Method to set the current IMAGE of the carousel
  // Usage: ref.read(eduPortfolioCarouselProvider.notifier)
  // .setCurrentEduPortfolioImage(index);
  String setCurrentEduPortfolioImage(int index) {
    return eduPortfolioImages[index];
  }

  // Method to get the current IMAGE of the carousel
  // Usage: ref.watch(eduPortfolioCarouselProvider.notifier)
  // .getCurrentEduPortfolioImage();
  String getCurrentEduPortfolioImage() {
    return eduPortfolioImages[state];
  }
}
