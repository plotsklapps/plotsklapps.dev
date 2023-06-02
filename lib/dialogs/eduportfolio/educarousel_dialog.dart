import 'dart:ui';

import 'package:portfolio/all_imports.dart';

final eduPortfolioCarouselProvider = StateNotifierProvider((ref) {
  return EduPortfolioCarouselNotifier();
});

class EduPortfolioCarouselNotifier extends StateNotifier<int> {
  EduPortfolioCarouselNotifier() : super(0);

  final eduPortfolioTexts = <String>[
    'Dicee is a simple dice rolling app. It uses the Random class to generate random numbers.',
    'Xylophone is a simple app that plays sounds when you tap on the buttons. It uses the audioplayers package to play sounds.',
    'BMI Calculator is a simple app that calculates your BMI. It uses the math package to calculate the BMI.',
    'Weather is a simple app that shows the weather of a city. It uses the http package to fetch data from the OpenWeatherMap API.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
  ];

  String getCurrentEduPortfolioText(int index) {
    return eduPortfolioTexts[index];
  }
}

// URL to the Dicee app source code
final Uri diceeURL = Uri.parse(
  'https://github.com/plotsklapps/plotsklapps.dev/blob/master/lib/mobile/diceescreen_mobile.dart',
);

// List of images to display in the carousel
final eduPortfolioImages = <String>[
  'assets/images/eduportfolio_dicee.png',
  'assets/images/eduportfolio_xylophone.png',
  'assets/images/eduportfolio_bmicalc.png',
  'assets/images/eduportfolio_weather.png',
];

// Index of the starting image in the carousel
int currentEduPortfolioImageIndex = 0;

void showEduCarouselDialog(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text that shows a description of the app, depending on
                  // the current image index
                  const Text('Lorem ipsem...'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (currentEduPortfolioImageIndex == 0) {
                        Navigator.pushNamed(context, '/dicee');
                      } else {
                        return;
                      }
                    },
                    child: const Text('Open App'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      if (currentEduPortfolioImageIndex == 0) {
                        launchUrl(diceeURL);
                      } else {
                        return;
                      }
                    },
                    child: const Text('Show Source Code'),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: ScrollConfiguration(
                      behavior: const ScrollBehavior().copyWith(
                        dragDevices: {
                          PointerDeviceKind.mouse,
                          PointerDeviceKind.touch,
                          PointerDeviceKind.trackpad,
                        },
                      ),
                      child: PageView.builder(
                        itemCount: eduPortfolioImages.length,
                        onPageChanged: (int index) {
                          currentEduPortfolioImageIndex = index;
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Image.asset(
                            eduPortfolioImages[index],
                            fit: BoxFit.contain,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
