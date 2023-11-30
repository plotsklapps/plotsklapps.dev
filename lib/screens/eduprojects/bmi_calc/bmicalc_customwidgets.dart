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
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
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
    required this.onLongPressed,
    super.key,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final VoidCallback onLongPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      onPressed: onPressed,
      onLongPress: onLongPressed,
      constraints: const BoxConstraints.tightFor(
        width: 40,
        height: 40,
      ),
      shape: const CircleBorder(),
      fillColor: BMICalcUtils.kBackGroundGrey,
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
          size: 72,
          color: color,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          label,
          style: BMICalcUtils.kLabelTextStyle,
        ),
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
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 8),
        decoration: const BoxDecoration(
          color: BMICalcUtils.kOrangeFlame,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        width: double.infinity,
        height: BMICalcUtils.kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: BMICalcUtils.kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
