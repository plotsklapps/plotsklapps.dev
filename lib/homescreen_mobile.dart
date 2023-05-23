import 'package:portfolio/all_imports.dart';

/// Home screen of the app.
class HomeScreenMobile extends ConsumerStatefulWidget {
  /// Creates a new instance of [HomeScreenMobile].
  const HomeScreenMobile({super.key});

  @override
  ConsumerState<HomeScreenMobile> createState() {
    return _HomeScreenMobileState();
  }
}

class _HomeScreenMobileState extends ConsumerState<HomeScreenMobile> {
  bool isLightMode = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/textlogo.png',
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isLightMode = !isLightMode;
                });
                ref.read(themeModeProvider.notifier).state =
                    isLightMode ? ThemeMode.light : ThemeMode.dark;
              },
              icon: Icon(
                isLightMode ? FontAwesomeIcons.moon : FontAwesomeIcons.sun,
              ),
            ),
          ],
        ),
        drawer: const Drawer(),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialIcon(
                      destination: TwitterScreenMobile(),
                      icon: FontAwesomeIcons.twitter,
                    ),
                    SizedBox(width: 16),
                    SocialIcon(
                      destination: HashnodeScreenMobile(),
                      icon: FontAwesomeIcons.hashnode,
                    ),
                    SizedBox(width: 16),
                    SocialIcon(
                      destination: GithubScreenMobile(),
                      icon: FontAwesomeIcons.github,
                    ),
                    SizedBox(width: 16),
                    SocialIcon(
                      destination: EmailScreenMobile(),
                      icon: FontAwesomeIcons.envelope,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(child: Placeholder()),
                    SizedBox(width: 16),
                    Expanded(child: Placeholder()),
                    SizedBox(width: 16),
                    Expanded(child: Placeholder()),
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

/// Social icon widget as used on homescreen.
class SocialIcon extends StatelessWidget {
  /// Creates a new instance of [SocialIcon].
  const SocialIcon({
    required this.destination,
    required this.icon,
    super.key,
  });

  /// Destination screen.
  final Widget destination;

  /// Icon.
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute<Widget>(
              builder: (context) {
                return destination;
              },
            ),
          );
        },
        icon: Icon(
          icon,
        ).animate().flip(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeInOut,
            ),
      ),
    );
  }
}
