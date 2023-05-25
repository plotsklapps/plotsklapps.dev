import 'package:portfolio/all_imports.dart';

/// Education screen of the app.
class EducationScreenDesktop extends StatefulWidget {
  /// Creates a new instance of [EducationScreenDesktop].
  const EducationScreenDesktop({super.key});

  @override
  State<EducationScreenDesktop> createState() {
    return EducationScreenMobileState();
  }
}

/// State for [EducationScreenDesktop].
class EducationScreenMobileState extends State<EducationScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Icon(FontAwesomeIcons.graduationCap),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlipCard(
                      front: Card(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: const ListTile(
                            leading: Icon(FontAwesomeIcons.graduationCap),
                            title: Text('Flutter Bootcamp 2021'),
                            subtitle: Text('Udemy - Angela Yu'),
                          ),
                        ),
                      ),
                      back: Card(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: Image.asset('assets/flutterbootcamp2021.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlipCard(
                      front: Card(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: const ListTile(
                            leading: Icon(FontAwesomeIcons.graduationCap),
                            title: Text('Dart from Novice to Expert 2022'),
                            subtitle: Text('Udemy - Tiberiu Potec'),
                          ),
                        ),
                      ),
                      back: Card(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child:
                              Image.asset('assets/dartnovicetoexpert2022.jpg'),
                        ),
                      ),
                    ),
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
