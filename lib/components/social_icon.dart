import 'package:portfolio/all_imports.dart';

class SocialsIcon extends StatelessWidget {
  final Icon icon;
  final Duration delay;
  final VoidCallback onPressed;

  const SocialsIcon({
    super.key,
    required this.icon,
    required this.delay,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        onPressed: onPressed,
        icon: icon.animate().flip(
              delay: delay,
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeInOut,
            ),
      ),
    );
  }
}
