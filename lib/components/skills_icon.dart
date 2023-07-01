import 'package:portfolio/all_imports.dart';

class SkillsIcon extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;

  const SkillsIcon({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 48,
        width: 48,
        child: Image.asset(
          icon,
        ),
      ),
    );
  }
}
