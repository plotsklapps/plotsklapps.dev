import 'package:portfolio/all_imports.dart';

class DiceeScreenMobile extends StatefulWidget {
  const DiceeScreenMobile({super.key});

  @override
  DiceeScreenMobileState createState() {
    return DiceeScreenMobileState();
  }
}

class DiceeScreenMobileState extends State<DiceeScreenMobile> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicee'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: changeDiceFace,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: FlexColor.outerSpaceDarkPrimary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Image.asset(
                        'assets/images/dicee/dice$leftDiceNumber.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: changeDiceFace,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: FlexColor.outerSpaceDarkPrimary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Image.asset(
                        'assets/images/dicee/dice$rightDiceNumber.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
