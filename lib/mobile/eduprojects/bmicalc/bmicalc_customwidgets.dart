import 'package:portfolio/all_imports.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    required this.color,
    required this.cardChild,
    required this.onPress,
    super.key,
  });

  final Color color;
  final Widget cardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: const CircleBorder(),
      fillColor: kBackGroundGrey,
      child: Icon(icon),
    );
  }
}

class IconContent extends StatelessWidget {
  const IconContent({
    required this.icon,
    required this.label,
    required this.color,
    super.key,
  });
  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 90,
          color: color,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({
    required this.onTap,
    required this.buttonTitle,
    super.key,
  });

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kOrangeFlame,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 8),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
