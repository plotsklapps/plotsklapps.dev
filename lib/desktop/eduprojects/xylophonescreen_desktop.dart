import 'package:portfolio/all_imports.dart';

class XylophoneScreenDesktop extends StatelessWidget {
  const XylophoneScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.kElectricBlue,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(
              height: 480,
              width: 240,
              child: Column(
                children: <Widget>[
                  Text(
                    '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // Set up width and height for the 'smartphone'.
              width: 400,
              height: 700,
              decoration: BoxDecoration(
                borderRadius:
                    // Phones have rounded corners.
                    BorderRadius.circular(40),
                // Phone body color.
                color: Utils.kGunMetal,
                boxShadow: <BoxShadow>[
                  // This creates a shadow effect to give some 3D appearance
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(
                    25.0), // This gives the edge around the screen
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(24),
                  ),
                  child: ColoredBox(
                    color: Utils.kLightGrey,
                    child: const XylophoneScreenMobile(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
