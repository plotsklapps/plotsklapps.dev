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
            mainAxisAlignment: MainAxisAlignment.center,
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
                      icon: Icon(
                        FontAwesomeIcons.twitter,
                        color: Utils.kGunMetal,
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
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Utils.kGunMetal,
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
                      icon: Icon(
                        FontAwesomeIcons.hashnode,
                        color: Utils.kGunMetal,
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
              // Row with two columns. One holds the Education/Portfolio/
              // Contact cards, the other holds the profile text.
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
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
                  const SizedBox(height: 16),
                  const Text(
                    "I'm Jeremy, a Flutter and Ionic developer from "
                    'the Netherlands. I have completed various '
                    'courses on Ionic, Dart & Flutter and I am '
                    'currently learning more about UI/UX design '
                    "with Figma. Reach out to me if you'd like "
                    'to know more!',
                    textAlign: TextAlign.center,
                  ),
                ],
              ).animate().fadeIn(
                    delay: const Duration(milliseconds: 1500),
                    duration: const Duration(milliseconds: 3000),
                    curve: Curves.easeInOut,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
