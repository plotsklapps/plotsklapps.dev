import 'package:portfolio/all_imports.dart';

Future<void> showSkillsIconDialog(BuildContext context, int index) async {
  await showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Consumer(
        builder: (
          BuildContext context,
          WidgetRef ref,
          Widget? child,
        ) {
          return Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 72,
                  width: 72,
                  child: Image.asset(
                    ref
                        .watch(skillsIconsProvider.notifier)
                        .skillsIconsList[index],
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  ref
                      .watch(skillsIconsProvider.notifier)
                      .skillsTitlesList[index],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  ref
                      .watch(skillsIconsProvider.notifier)
                      .skillsSubtitlesList[index],
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                GestureDetector(
                  onTap: () {
                    if (index == 0) {
                      launchUrl(Utils.flutterURL);
                    } else if (index == 1) {
                      launchUrl(Utils.ionicURL);
                    } else if (index == 2) {
                      launchUrl(Utils.dartURL);
                    } else if (index == 3) {
                      launchUrl(Utils.firebaseURL);
                    } else if (index == 4) {
                      launchUrl(Utils.gitURL);
                    } else if (index == 5) {
                      launchUrl(Utils.githubURL);
                    } else if (index == 6) {
                      launchUrl(Utils.androidstudioURL);
                    } else if (index == 7) {
                      launchUrl(Utils.vscodeURL);
                    } else if (index == 8) {
                      launchUrl(Utils.linuxURL);
                    } else if (index == 9) {
                      launchUrl(Utils.windowsURL);
                    } else if (index == 10) {
                      launchUrl(Utils.openaiURL);
                    }
                  },
                  child: Text(
                    ref
                        .watch(skillsIconsProvider.notifier)
                        .skillsUrlsList[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
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
