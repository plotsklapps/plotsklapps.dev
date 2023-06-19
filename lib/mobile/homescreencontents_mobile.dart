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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Row of social media icons that show a ModalBottomsheet.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SocialsIcon(
                    icon: FontAwesomeIcons.twitter,
                    delay: Duration.zero,
                    onPressed: () async {
                      await showTwitterDialog(context);
                    },
                  ),
                  const SizedBox(width: 16),
                  SocialsIcon(
                    icon: FontAwesomeIcons.github,
                    delay: const Duration(milliseconds: 500),
                    onPressed: () async {
                      await showGithubDialog(context);
                    },
                  ),
                  const SizedBox(width: 16),
                  SocialsIcon(
                    icon: FontAwesomeIcons.hashnode,
                    delay: const Duration(milliseconds: 1000),
                    onPressed: () async {
                      await showHashnodeDialog(context);
                    },
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 16),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                      // ScrollConfiguration to allow for scrolling on web.
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
                              SkillsIcon(
                                icon: ref
                                    .watch(skillsIconsProvider.notifier)
                                    .skillsIconsList[0],
                                onTap: () async {
                                  await showSkillsIconDialog(context, 0);
                                },
                              ),
                              const SizedBox(width: 16),
                              SkillsIcon(
                                icon: ref
                                    .watch(skillsIconsProvider.notifier)
                                    .skillsIconsList[1],
                                onTap: () async {
                                  await showSkillsIconDialog(context, 1);
                                },
                              ),
                              const SizedBox(width: 16),
                              SkillsIcon(
                                icon: ref
                                    .watch(skillsIconsProvider.notifier)
                                    .skillsIconsList[2],
                                onTap: () async {
                                  await showSkillsIconDialog(context, 2);
                                },
                              ),
                              const SizedBox(width: 16),
                              SkillsIcon(
                                icon: ref
                                    .watch(skillsIconsProvider.notifier)
                                    .skillsIconsList[3],
                                onTap: () async {
                                  await showSkillsIconDialog(context, 3);
                                },
                              ),
                              const SizedBox(width: 16),
                              SkillsIcon(
                                icon: ref
                                    .watch(skillsIconsProvider.notifier)
                                    .skillsIconsList[4],
                                onTap: () async {
                                  await showSkillsIconDialog(context, 4);
                                },
                              ),
                              const SizedBox(width: 16),
                              SkillsIcon(
                                icon: ref
                                    .watch(skillsIconsProvider.notifier)
                                    .skillsIconsList[5],
                                onTap: () async {
                                  await showSkillsIconDialog(context, 5);
                                },
                              ),
                              const SizedBox(width: 16),
                              SkillsIcon(
                                icon: ref
                                    .watch(skillsIconsProvider.notifier)
                                    .skillsIconsList[6],
                                onTap: () async {
                                  await showSkillsIconDialog(context, 6);
                                },
                              ),
                              const SizedBox(width: 16),
                              SkillsIcon(
                                icon: ref
                                    .watch(skillsIconsProvider.notifier)
                                    .skillsIconsList[7],
                                onTap: () async {
                                  await showSkillsIconDialog(context, 7);
                                },
                              ),
                              const SizedBox(width: 16),
                              SkillsIcon(
                                icon: ref
                                    .watch(skillsIconsProvider.notifier)
                                    .skillsIconsList[8],
                                onTap: () async {
                                  await showSkillsIconDialog(context, 8);
                                },
                              ),
                            ],
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

class SocialsIcon extends StatelessWidget {
  final IconData icon;
  final Duration delay;
  final VoidCallback onPressed;

  const SocialsIcon({
    super.key,
    required this.icon,
    required this.delay,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
        ).animate().flip(
              delay: delay,
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeInOut,
            ),
      ),
    );
  }
}

class SkillsIcon extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;

  const SkillsIcon({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 48,
        width: 48,
        child: Image.asset(
          icon,
        ),
      ),
    );
  }
}
