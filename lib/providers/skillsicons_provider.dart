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
    'assets/icons/skillsicons/flutter_logo.png',
    'assets/icons/skillsicons/ionic_logo.png',
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
    'FLUTTER',
    'IONIC',
    'DART',
    'FIREBASE',
    'GIT',
    'GITHUB',
    'ANDROID STUDIO',
    'VSCODE',
    'LINUX',
    'WINDOWS',
    'OPEN AI',
  ];

// List of Subtitles to display in the carousel.
  final List<String> skillsSubtitlesList = <String>[
    '''
    UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.''',
    '''
    Framework for building cross-platform mobile, web, and desktop applications.''',
    '''
    Open-source, general-purpose programming language, characterized by its strong typing and object-oriented approach, designed for building web, server, and mobile applications, and can be compiled to native code or JavaScript, known especially for its usage in the Flutter framework for developing natively compiled applications.''',
    '''
    App development platform that includes services for hosting, database storage, user authentication, machine learning, static hosting, and many more, aimed to simplify the development process by providing serverless solutions.''',
    '''
    Distributed version control system from the command line, that enables 
    multiple people to work on a project at the same time without overwriting each other's changes. It tracks and records all changes made to a project, allowing to revert to earlier versions, compare versions, or merge changes with ease. Git is primarily used for source code management in software development, but it can be used to keep track of changes in any set of files.''',
    '''
    Web-based hosting service for Git repositories, facilitating version control and collaboration, allowing multiple individuals to work on projects concurrently. Apart from being a repository, it provides several other features like bug tracking, feature requests, task management, and wikis for every project. It has become a central hub for open-source development, with features that encourage social coding, documentation, and project transparency.''',
    '''
    Official integrated development environment (IDE) for Android development, offering powerful code editing, debugging, and testing tools for building robust apps for apps on all platforms.''',
    '''
    Cross-platform, extensible code editor that offers debuggers, terminal integration, source control, and a large array of tools and functionalities for developing (Flutter) apps.''',
    'Open source operating system, based on Unix operating system.',
    'Operating system by Microsoft.',
    'Artificial Intelligence research lab, developing and promoting AI.',
  ];

  // List of URLs to display in the carousel.
  final List<String> skillsUrlsList = <String>[
    'https://flutter.dev/',
    'https://ionicframework.com/',
    'https://dart.dev/',
    'https://firebase.google.com/',
    'https://git-scm.com/',
    'https://github.com',
    'https://developer.android.com/studio',
    'https://code.visualstudio.com/',
    'https://www.linux.org/',
    'https://www.microsoft.com/en-us/windows',
    'https://openai.com/',
  ];
}
