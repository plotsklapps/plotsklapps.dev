import 'package:portfolio/all_imports.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

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
                iconFront: Utils.kIconCircleCheck,
                titleBack: 'See Diploma and Grades',
                iconBack: Utils.kIconCertificate,
                onPressed: () async {
                  await showCertificateDialog(context, 0);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Flutter Bootcamp',
                subtitleFront: 'Sep 2021 - Udemy - Angela Yu',
                iconFront: Utils.kIconCircleCheck,
                titleBack: 'See Certificate',
                iconBack: Utils.kIconCertificate,
                onPressed: () async {
                  await showCertificateDialog(context, 1);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Dart from Novice to Expert',
                subtitleFront: 'Nov 2021 - Udemy - Tiberiu Potec',
                iconFront: Utils.kIconCircleCheck,
                titleBack: 'See Certificate',
                iconBack: Utils.kIconCertificate,
                onPressed: () async {
                  await showCertificateDialog(context, 2);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Dart Beginners',
                subtitleFront: 'Nov 2021 - Udemy - Bryan Cairns',
                iconFront: Utils.kIconCircleCheck,
                titleBack: 'See Certificate',
                iconBack: Utils.kIconCertificate,
                onPressed: () async {
                  await showCertificateDialog(context, 3);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Flutter Beginners',
                subtitleFront: 'Dec 2021 - Udemy - Bryan Cairns',
                iconFront: Utils.kIconCircleCheck,
                titleBack: 'See Certificate',
                iconBack: Utils.kIconCertificate,
                onPressed: () async {
                  await showCertificateDialog(context, 4);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Dart Intermediate',
                subtitleFront: 'Jan 2022 - Udemy - Bryan Cairns',
                iconFront: Utils.kIconCircleCheck,
                titleBack: 'See Certificate',
                iconBack: Utils.kIconCertificate,
                onPressed: () async {
                  await showCertificateDialog(context, 5);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Flutter Intermediate',
                subtitleFront: 'Sep 2022 - Udemy - Bryan Cairns',
                iconFront: Utils.kIconCircleCheck,
                titleBack: 'See Certificate',
                iconBack: Utils.kIconCertificate,
                onPressed: () async {
                  await showCertificateDialog(context, 6);
                },
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Dart Advanced',
                subtitleFront: 'In Progress - Udemy - Bryan Cairns',
                iconFront: Utils.kIconCircleXMark,
                titleBack: 'Soon',
                iconBack: Utils.kIconCircleXMark,
                onPressed: () {},
              ),
              FlipCardCertificate(
                context: context,
                titleFront: 'Flutter Advanced',
                subtitleFront: 'Waitinglist - Udemy - Bryan Cairns',
                iconFront: Utils.kIconCircleXMark,
                titleBack: 'Soon',
                iconBack: Utils.kIconCircleXMark,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
