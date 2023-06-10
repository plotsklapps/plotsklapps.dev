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
        child: SingleChildScrollView(
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
