import 'dart:ui';

import 'package:portfolio/all_imports.dart';

class ProCarousel extends ConsumerWidget {
  const ProCarousel({super.key});

  Future<void> buildTimelappsDialog(BuildContext context, String image) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ColoredBox(
              color: Colors.transparent,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(image),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          const SizedBox(height: 16),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                    await buildTimelappsDialog(
                      context,
                      'assets/images/timelapps/timelapps.png',
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'assets/images/timelapps/timelapps.png',
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text(
                    // TODO(plotsklapps): See if this is the best way to do this.
                    '''
Timelapps is a time tracking app designed for educational professionals with a focus on simplicity and ease of use.''',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Divider(),
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
