import 'dart:ui';

import 'package:portfolio/all_imports.dart';

class ProCarousel extends ConsumerWidget {
  const ProCarousel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            // ScrollConfiguration to allow for scrolling on web
            // with various input devices.
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(
                scrollbars: false,
                dragDevices: <PointerDeviceKind>{
                  PointerDeviceKind.mouse,
                  PointerDeviceKind.trackpad,
                  PointerDeviceKind.touch,
                  PointerDeviceKind.stylus,
                },
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(Utils.timelappsURL);
                      },
                      child: const Text(
                        'TIMELAPPS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                          'assets/images/timelapps/timelapps_screenshot1.png'),
                    ),
                    const SizedBox(width: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                          'assets/images/timelapps/timelapps_screenshot2.png'),
                    ),
                    const SizedBox(width: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                          'assets/images/timelapps/timelapps_screenshot3.png'),
                    ),
                    const SizedBox(width: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                          'assets/images/timelapps/timelapps_screenshot4.png'),
                    ),
                    const SizedBox(width: 16),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                          'assets/images/timelapps/timelapps_screenshot5.png'),
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            // ScrollConfiguration to allow for scrolling on web
            // with various input devices.
            child: ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(
                scrollbars: false,
                dragDevices: <PointerDeviceKind>{
                  PointerDeviceKind.mouse,
                  PointerDeviceKind.trackpad,
                  PointerDeviceKind.touch,
                  PointerDeviceKind.stylus,
                },
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(Utils.boksklappsURL);
                      },
                      child: const Text(
                        'BOKSKLAPPS',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
