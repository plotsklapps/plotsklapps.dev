import 'dart:ui';

import 'package:portfolio/all_imports.dart';

class PersonalScreen extends ConsumerWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
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
            child: Column(
              children: <Widget>[
                // Row of social media icons that show a ModalBottomsheet.
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SocialsIcon(
                      icon: Utils.kIconTwitter,
                      delay: Duration.zero,
                      onPressed: () async {
                        await showTwitterDialog(context);
                      },
                    ),
                    const SizedBox(width: 16),
                    SocialsIcon(
                      icon: Utils.kIconGithub,
                      delay: const Duration(milliseconds: 500),
                      onPressed: () async {
                        await showGithubDialog(context);
                      },
                    ),
                    const SizedBox(width: 16),
                    SocialsIcon(
                      icon: Utils.kIconHashnode,
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
                    const CustomFlipCard(),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
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
                                // Row of skill icons that show a
                                // ModalBottomsheet.
                                SkillsIcon(
                                  icon: ref
                                      .watch(skillsIconsProvider.notifier)
                                      .skillsIconsList[9],
                                  onTap: () async {
                                    await showSkillsIconDialog(context, 9);
                                  },
                                ),
                                const SizedBox(width: 16),
                                SkillsIcon(
                                  icon: ref
                                      .watch(skillsIconsProvider.notifier)
                                      .skillsIconsList[10],
                                  onTap: () async {
                                    await showSkillsIconDialog(context, 10);
                                  },
                                ),
                                const SizedBox(width: 16),
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
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
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
                                const Text(
                                  'TIMELAPPS',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
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
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
