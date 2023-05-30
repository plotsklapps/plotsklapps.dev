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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Icon(FontAwesomeIcons.graduationCap),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                FlipCardCertificate(
                  context: context,
                  titleFront: 'Programming apps with Ionic',
                  subtitleFront: '2021 - NHA',
                  iconFront: FontAwesomeIcons.solidCircleCheck,
                  titleBack: 'See Diploma and Grades',
                  iconBack: FontAwesomeIcons.certificate,
                  onPressed: () {
                    showIonicNHADialog(context);
                  },
                ),
                FlipCardCertificate(
                  context: context,
                  titleFront: 'Flutter Bootcamp',
                  subtitleFront: '2021 - Udemy - Angela Yu',
                  iconFront: FontAwesomeIcons.solidCircleCheck,
                  titleBack: 'See Certificate',
                  iconBack: FontAwesomeIcons.certificate,
                  onPressed: () {
                    showFlutterBootcamp2021Dialog(context);
                  },
                ),
                FlipCardCertificate(
                  context: context,
                  titleFront: 'Dart from Novice to Expert',
                  subtitleFront: '2021 - Udemy - Tiberiu Potec',
                  iconFront: FontAwesomeIcons.solidCircleCheck,
                  titleBack: 'See Certificate',
                  iconBack: FontAwesomeIcons.certificate,
                  onPressed: () {
                    showDartNoviceToExpertDialog(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FlipCardCertificate extends StatelessWidget {
  const FlipCardCertificate({
    required this.iconFront,
    required this.iconBack,
    required this.titleFront,
    required this.subtitleFront,
    required this.titleBack,
    required this.onPressed,
    required this.context,
    super.key,
  });

  final BuildContext context;
  final IconData iconFront;
  final IconData iconBack;
  final String titleFront;
  final String subtitleFront;
  final String titleBack;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      direction: FlipDirection.VERTICAL,
      front: Card(
        child: ListTile(
          trailing: Icon(iconFront),
          title: Text(
            titleFront,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(subtitleFront),
        ),
      ),
      back: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titleBack,
              ),
              IconButton(
                onPressed: onPressed,
                icon: Icon(iconBack),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
