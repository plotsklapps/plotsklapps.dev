import 'package:portfolio/all_imports.dart';

class HomeScreenDesktop extends StatelessWidget {
  const HomeScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.kElectricBlue,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 250,
              width: 250,
              child: Image.asset(
                'assets/images/stackedlogo.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 64),
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
                    child: const HomeScreenMobile(),
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