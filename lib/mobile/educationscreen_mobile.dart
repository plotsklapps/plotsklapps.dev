import 'package:portfolio/all_imports.dart';

class EducationScreenMobile extends StatefulWidget {
  const EducationScreenMobile({super.key});

  @override
  State<EducationScreenMobile> createState() {
    return EducationScreenMobileState();
  }
}

class EducationScreenMobileState extends State<EducationScreenMobile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Icon(FontAwesomeIcons.graduationCap),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Responsive.isMobile(context) ? 16 : 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: Responsive.isMobile(context)
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    FlipCard(
                      front: Card(
                        child: SizedBox(
                          // TODO(CapturedHeart): or Use the responsive
                          //  constructor this way.
                          width: Responsive.isMobile(context)
                              ? size.width * 0.8
                              : size.width * 0.4,
                          height: size.height * 0.2,
                          child: const ListTile(
                            leading: Icon(FontAwesomeIcons.graduationCap),
                            title: Text('Flutter Bootcamp 2021'),
                            subtitle: Text('Udemy - Angela Yu'),
                          ),
                        ),
                      ),
                      back: Card(
                        child: SizedBox(
                          // TODO(CapturedHeart): or Use the responsive
                          //  constructor this way

                          width: Responsive.isMobile(context)
                              ? size.width * 0.8
                              : size.width * 0.4,
                          height: size.height * 0.2,
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
                          width: size.width * 0.8,
                          height: size.height * 0.2,
                          child: const ListTile(
                            leading: Icon(FontAwesomeIcons.graduationCap),
                            title: Text('Dart from Novice to Expert 2022'),
                            subtitle: Text('Udemy - Tiberiu Potec'),
                          ),
                        ),
                      ),
                      back: Card(
                        child: SizedBox(
                          width: size.width * 0.8,
                          height: size.height * 0.2,
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
