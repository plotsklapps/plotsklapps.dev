import 'dart:ui';

import 'package:portfolio/all_imports.dart';

void showEduCarouselDialog(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Consumer(
        builder: (context, ref, child) {
          // Set the current index to the eduPortfolioCarouselProvider int.
          final currentIndex = ref.watch(eduPortfolioCarouselProvider);
          return Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                          if (currentIndex == 0) {
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
                          launchUrl(Utils.diceeURL);
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
                        // ScrollConfiguration to allow for scrolling on web.
                        child: ScrollConfiguration(
                          behavior: const ScrollBehavior().copyWith(
                            dragDevices: {
                              PointerDeviceKind.mouse,
                              PointerDeviceKind.touch,
                              PointerDeviceKind.trackpad,
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
