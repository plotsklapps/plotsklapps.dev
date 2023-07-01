import 'package:portfolio/all_imports.dart';

class CustomFlipCard extends StatelessWidget {
  const CustomFlipCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      speed: 1500,
      front: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.25,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      'assets/images/plotsklapps_waving.png',
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Hello World!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      back: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.25,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    'assets/littleplotsklapps.gif',
                    width: 96,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    Utils.kFlipCardHomeScreen,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
