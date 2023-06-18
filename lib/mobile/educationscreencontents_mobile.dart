import 'package:portfolio/all_imports.dart';
import 'package:portfolio/dialogs/certificate_dialog.dart';

class EducationScreenContentsMobile extends StatefulWidget {
  const EducationScreenContentsMobile({super.key});

  @override
  State<EducationScreenContentsMobile> createState() {
    return EducationScreenContentsMobileState();
  }
}

class EducationScreenContentsMobileState
    extends State<EducationScreenContentsMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              FlipCardCertificate(
                context: context,
                titleFront: 'Programming apps with Ionic',
                subtitleFront: 'May 2021 - NHA',
                iconFront: FontAwesomeIcons.solidCircleCheck,
                titleBack: 'See Diploma and Grades',
                iconBack: FontAwesomeIcons.certificate,
                onPressed: () async {
                  await showCertificateDialog(context, 0);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Flutter Bootcamp',
                subtitleFront: 'Sep 2021 - Udemy - Angela Yu',
                iconFront: FontAwesomeIcons.solidCircleCheck,
                titleBack: 'See Certificate',
                iconBack: FontAwesomeIcons.certificate,
                onPressed: () async {
                  await showCertificateDialog(context, 1);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Dart from Novice to Expert',
                subtitleFront: 'Nov 2021 - Udemy - Tiberiu Potec',
                iconFront: FontAwesomeIcons.solidCircleCheck,
                titleBack: 'See Certificate',
                iconBack: FontAwesomeIcons.certificate,
                onPressed: () async {
                  await showCertificateDialog(context, 2);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Dart Beginners',
                subtitleFront: 'Nov 2021 - Udemy - Bryan Cairns',
                iconFront: FontAwesomeIcons.solidCircleCheck,
                titleBack: 'See Certificate',
                iconBack: FontAwesomeIcons.certificate,
                onPressed: () async {
                  await showCertificateDialog(context, 3);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Flutter Beginners',
                subtitleFront: 'Dec 2021 - Udemy - Bryan Cairns',
                iconFront: FontAwesomeIcons.solidCircleCheck,
                titleBack: 'See Certificate',
                iconBack: FontAwesomeIcons.certificate,
                onPressed: () async {
                  await showCertificateDialog(context, 4);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Dart Intermediate',
                subtitleFront: 'Jan 2022 - Udemy - Bryan Cairns',
                iconFront: FontAwesomeIcons.solidCircleCheck,
                titleBack: 'See Certificate',
                iconBack: FontAwesomeIcons.certificate,
                onPressed: () async {
                  await showCertificateDialog(context, 5);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Flutter Intermediate',
                subtitleFront: 'Sep 2022 - Udemy - Bryan Cairns',
                iconFront: FontAwesomeIcons.solidCircleCheck,
                titleBack: 'See Certificate',
                iconBack: FontAwesomeIcons.certificate,
                onPressed: () async {
                  await showCertificateDialog(context, 6);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Dart Advanced',
                subtitleFront: 'In Progress - Udemy - Bryan Cairns',
                iconFront: FontAwesomeIcons.solidCircleXmark,
                titleBack: 'Soon',
                iconBack: FontAwesomeIcons.solidCircleXmark,
                onPressed: () {},
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Flutter Advanced',
                subtitleFront: 'Waitinglist - Udemy - Bryan Cairns',
                iconFront: FontAwesomeIcons.solidCircleXmark,
                titleBack: 'Soon',
                iconBack: FontAwesomeIcons.solidCircleXmark,
                onPressed: () {},
              ),
            ],
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
            children: <Widget>[
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
