import 'package:portfolio/all_imports.dart';

class HomeScreenTablet extends StatelessWidget {
  const HomeScreenTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.6,
        height: MediaQuery.sizeOf(context).height * 0.8,
        decoration: BoxDecoration(
          color: Utils.kGunMetal,
          borderRadius: BorderRadius.circular(24),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
          border: Border.all(
            color: Utils.kGunMetal,
            width: 16,
          ),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: const HomeScreenMobile()),
      ),
    );
  }
}
