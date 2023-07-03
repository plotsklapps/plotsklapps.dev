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
            child: Row(
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
                Expanded(
                  child: ListTile(
                    title: Text(
                      ref
                          .watch(skillsIconsProvider.notifier)
                          .skillsTitlesList[index],
                    ),
                    subtitle: Text(
                      ref
                          .watch(skillsIconsProvider.notifier)
                          .skillsSubtitlesList[index],
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
