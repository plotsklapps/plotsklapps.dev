import 'dart:ui';

import 'package:portfolio/all_imports.dart';

class HomeScreenContentsMobile extends ConsumerStatefulWidget {
  const HomeScreenContentsMobile({super.key});

  @override
  ConsumerState<HomeScreenContentsMobile> createState() {
    return HomeScreenContentsMobileState();
  }
}

class HomeScreenContentsMobileState
    extends ConsumerState<HomeScreenContentsMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            // Row of social media icons.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: IconButton(
                    onPressed: () async {
                      await showTwitterDialog(context);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.twitter,
                    ).animate().flip(
                          delay: Duration.zero,
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: IconButton(
                    onPressed: () async {
                      await showGithubDialog(context);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.github,
                    ).animate().flip(
                          delay: const Duration(milliseconds: 500),
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: IconButton(
                    onPressed: () async {
                      await showHashnodeDialog(context);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.hashnode,
                    ).animate().flip(
                          delay: const Duration(milliseconds: 1000),
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.easeInOut,
                        ),
                  ),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Flippable Card with some background info
                      FlipCard(
                        speed: 1500,
                        direction: FlipDirection.VERTICAL,
                        front: SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: Card(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                const FlutterLogo(
                                  size: 75,
                                  style: FlutterLogoStyle.markOnly,
                                ).animate(
                                  onPlay: (AnimationController controller) {
                                    controller.repeat();
                                  },
                                ).shimmer(
                                  delay: Duration.zero,
                                  duration: const Duration(seconds: 4),
                                ),
                                Image.asset(
                                  'assets/images/ioniclogo.png',
                                  height: 75,
                                ).animate(
                                  onPlay: (AnimationController controller) {
                                    controller.repeat();
                                  },
                                ).shimmer(
                                  delay: const Duration(seconds: 2),
                                  duration: const Duration(seconds: 4),
                                ),
                              ],
                            ),
                          ),
                        ),
                        back: SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.25,
                          child: const Card(
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Center(
                                child: Text(
                                  "I'm Jeremy, a Flutter and Ionic developer from "
                                  'the Netherlands. I have completed various '
                                  'courses on Ionic, Dart & Flutter and I am '
                                  'currently learning more about UI/UX design '
                                  "with Figma. Reach out to me if you'd like "
                                  'to know more!',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Divider(),
                      const SizedBox(height: 16),
                      const Text(
                        'Skills',
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    'assets/icons/dart_logo.png',
                                    fit: BoxFit.contain,
                                  )),
                              const SizedBox(width: 16),
                              SizedBox(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    'assets/icons/firebase_logo.png',
                                    fit: BoxFit.contain,
                                  )),
                              const SizedBox(width: 16),
                              SizedBox(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    'assets/icons/github_logo.png',
                                    fit: BoxFit.contain,
                                  )),
                              const SizedBox(width: 16),
                              SizedBox(
                                  height: 48,
                                  width: 48,
                                  child: Image.asset(
                                    'assets/icons/androidstudio_logo.png',
                                    fit: BoxFit.contain,
                                  )),
                              const SizedBox(width: 16),
                              const Icon(
                                FontAwesomeIcons.five,
                                size: 36,
                              ),
                              const SizedBox(width: 16),
                              const Icon(
                                FontAwesomeIcons.six,
                                size: 36,
                              ),
                              const SizedBox(width: 16),
                              const Icon(
                                FontAwesomeIcons.seven,
                                size: 36,
                              ),
                              const SizedBox(width: 16),
                              const Icon(
                                FontAwesomeIcons.eight,
                                size: 36,
                              ),
                              const SizedBox(width: 16),
                              const Icon(
                                FontAwesomeIcons.nine,
                                size: 36,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Divider(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
