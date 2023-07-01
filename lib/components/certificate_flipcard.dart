import 'package:portfolio/all_imports.dart';

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
  final Icon iconFront;
  final Icon iconBack;
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
          trailing: iconFront,
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
                icon: iconBack,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
