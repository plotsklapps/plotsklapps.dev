import 'dart:ui';

import 'package:portfolio/all_imports.dart';

class EduCarousel extends ConsumerWidget {
  const EduCarousel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Function to navigate to the selected educational project. This is used to
    // avoid cluttering the UI code.
    Future<void> navigateToEduProject(Widget child) async {
      await Navigator.of(context).push(
        MaterialPageRoute<Widget>(
          builder: (BuildContext context) {
            return ResponsiveLayout(
              screen: child,
            );
          },
        ),
      );
    }

    final int currentIndex = ref.watch(eduPortfolioCarouselProvider);
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Set the text to currentIndex.
                Text(
                  ref
                      .watch(eduPortfolioCarouselProvider.notifier)
                      .getCurrentEduPortfolioText(currentIndex),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () async {
                    if (currentIndex == 0) {
                      await navigateToEduProject(const DiceScreen());
                    } else if (currentIndex == 1) {
                      await navigateToEduProject(const XylophoneScreen());
                    } else if (currentIndex == 2) {
                      await navigateToEduProject(const BMICalcScreen());
                    } else if (currentIndex == 3) {
                      await navigateToEduProject(
                        const WeatherLoadingScreenMobile(),
                      );
                    } else {
                      return;
                    }
                  },
                  child: const Text('Open App'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () async {
                    if (currentIndex == 0) {
                      await launchUrl(Utils.diceeURL);
                    } else if (currentIndex == 1) {
                      await launchUrl(Utils.xylophoneURL);
                    } else if (currentIndex == 2) {
                      await launchUrl(Utils.bmicalcURL);
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
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  // ScrollConfiguration to allow for scrolling on web.
                  child: ScrollConfiguration(
                    behavior: const ScrollBehavior().copyWith(
                      dragDevices: <PointerDeviceKind>{
                        PointerDeviceKind.mouse,
                        PointerDeviceKind.touch,
                        PointerDeviceKind.trackpad,
                        PointerDeviceKind.stylus,
                      },
                    ),
                    child: PageView.builder(
                      itemCount:
                          // Get the length of the eduPortfolioImages
                          // list.
                          ref
                              .watch(
                                eduPortfolioCarouselProvider.notifier,
                              )
                              .eduPortfolioImages
                              .length,
                      onPageChanged: (int index) {
                        // Update the eduPortfolioCarouselProvider int.
                        ref
                            .read(eduPortfolioCarouselProvider.notifier)
                            .setCurrentEduPortfolioIndex(index);
                        // Update the eduPortfolioCarouselProvider image.
                        ref
                            .read(eduPortfolioCarouselProvider.notifier)
                            .setCurrentEduPortfolioImage(index);
                        // Update the eduPortfolioCarouselProvider text.
                        ref
                            .read(eduPortfolioCarouselProvider.notifier)
                            .setCurrentEduPortfolioText(index);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return Image.asset(
                          // Set the image to the current index from the
                          // onPageChanged.
                          ref
                              .watch(
                                eduPortfolioCarouselProvider.notifier,
                              )
                              .eduPortfolioImages[index],
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
  }
}
