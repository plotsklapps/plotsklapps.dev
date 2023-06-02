import 'dart:ui';

import 'package:portfolio/all_imports.dart';

final eduPortfolioImages = <String>[
  'assets/images/eduportfolio_dicee.png',
  'assets/images/eduportfolio_xylophone.png',
  'assets/images/eduportfolio_bmicalc.png',
  'assets/images/eduportfolio_weather.png',
];
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
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    textAlign: TextAlign.center,
                  ),
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
                  ElevatedButton(
                    onPressed: () {},
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
