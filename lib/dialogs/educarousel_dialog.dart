import 'dart:ui';

import 'package:portfolio/all_imports.dart';

Future<void> showEduCarouselDialog(BuildContext context) async {
  final double screenWidth = MediaQuery.of(context).size.width;
  await showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Consumer(
        builder: (
          BuildContext context,
          WidgetRef ref,
          Widget? child,
        ) {
          // Set the current index to the eduPortfolioCarouselProvider int.
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
                        onPressed: () {
                          if (currentIndex == 0 && screenWidth < 720) {
                            Navigator.pushNamed(context, '/diceemobile');
                          } else if (currentIndex == 0 && screenWidth >= 720) {
                            Navigator.pushNamed(context, '/diceedesktop');
                          } else if (currentIndex == 1 && screenWidth < 720) {
                            Navigator.pushNamed(context, '/xylophonemobile');
                          } else if (currentIndex == 1 && screenWidth >= 720) {
                            Navigator.pushNamed(context, '/xylophonedesktop');
                          } else if (currentIndex == 2 && screenWidth < 720) {
                            Navigator.pushNamed(context, '/bmicalcmobile');
                          } else if (currentIndex == 2 && screenWidth >= 720) {
                            Navigator.pushNamed(context, '/bmicalcdesktop');
                          } else if (currentIndex == 3) {
                            Navigator.pushNamed(context, '/weather');
                          } else {
                            return;
                          }
                        },
                        child: const Text('Open App'),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          if (currentIndex == 0) {
                            launchUrl(Utils.diceeURL);
                          } else if (currentIndex == 1) {
                            launchUrl(Utils.xylophoneURL);
                          } else if (currentIndex == 2) {
                            launchUrl(Utils.bmicalcURL);
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
        },
      );
    },
  );
}
