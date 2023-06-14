import 'package:portfolio/all_imports.dart';

final StateNotifierProvider<SkillsIconsNotifier, int> skillsIconsProvider =
    StateNotifierProvider<SkillsIconsNotifier, int>(
        (StateNotifierProviderRef<SkillsIconsNotifier, int> ref) {
  return SkillsIconsNotifier();
});

class SkillsIconsNotifier extends StateNotifier<int> {
  SkillsIconsNotifier() : super(0);

// List of icons to display in the carousel.
  final List<String> skillsIconsList = <String>[
    'assets/icons/skillsicons/dart_logo.png',
    'assets/icons/skillsicons/firebase_logo.png',
    'assets/icons/skillsicons/git_logo.png',
    'assets/icons/skillsicons/github_logo.png',
    'assets/icons/skillsicons/androidstudio_logo.png',
    'assets/icons/skillsicons/vscode_logo.png',
    'assets/icons/skillsicons/linux_logo.png',
    'assets/icons/skillsicons/windows_logo.png',
    'assets/icons/skillsicons/openai_logo.png',
  ];

// List of Titles to display in the carousel.
  final List<String> skillsTitlesList = <String>[
    'DART',
    'FIREBASE',
    'GIT',
    'GITHUB',
    'ANDROID STUDIO',
    'VSCODE',
    'LINUX',
    'WINDOWS',
    'OPEN AI'
  ];

// List of Subtitles to display in the carousel.
  final List<String> skillsSubtitlesList = <String>[
    'The official programming for Flutter.',
    'Authenticating users and storing data.',
    'Command line controlled distributed version control system.',
    'Online platform for Git repositories.',
    'Integrated Development Environment providing tools for developing (Flutter) apps.',
    'Cross-platform, extensible code editor that offers various features for developing (Flutter) apps.',
    'Open source operating system, based on Unix operating system.',
    'Operating system by Microsoft.',
    'Artificial Intelligence research lab, developing and promoting AI.',
  ];

  // Method to set the current INDEX of the carousel
  // Usage: ref.read(skillsIconsProvider.notifier)
  // .setCurrentSkillsIconsIndex(index);
  int setCurrentSkillsIconsIndex(int index) {
    return state = index;
  }
}