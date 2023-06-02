import 'dart:ui';

import 'package:portfolio/all_imports.dart';

// URL to the Dicee app source code
final Uri diceeURL = Uri.parse(
  'https://github.com/plotsklapps/plotsklapps.dev/blob/master/lib/mobile/diceescreen_mobile.dart',
);

void showEduCarouselDialog(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Consumer(
        builder: (context, ref, child) {
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
                      // Text that shows a description of the app, depending on
                      // the current image index
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
                          launchUrl(diceeURL);
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
                            itemCount:
                                // Get the length of the eduPortfolioImages list
                                ref
                                    .watch(
                                      eduPortfolioCarouselProvider.notifier,
                                    )
                                    .eduPortfolioImages
                                    .length,
                            onPageChanged: (int index) {
                              // Update the eduPortfolioCarouselProvider int
                              ref
                                  .read(eduPortfolioCarouselProvider.notifier)
                                  .setCurrentEduPortfolioIndex(index);
                              // Update the eduPortfolioCarouselProvider image
                              ref
                                  .read(eduPortfolioCarouselProvider.notifier)
                                  .setCurrentEduPortfolioImage(index);
                              // Update the eduPortfolioCarouselProvider text
                              ref
                                  .read(eduPortfolioCarouselProvider.notifier)
                                  .setCurrentEduPortfolioText(index);
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return Image.asset(
                                // Set the image to the current index
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
