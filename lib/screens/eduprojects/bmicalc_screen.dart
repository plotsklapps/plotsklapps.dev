import 'package:portfolio/all_imports.dart';

final StateProvider<bool> isMaleProvider =
    StateProvider<bool>((StateProviderRef<bool> ref) {
  return true;
});

class BMICalcScreen extends ConsumerStatefulWidget {
  const BMICalcScreen({super.key});

  @override
  BMICalcScreenMobileState createState() {
    return BMICalcScreenMobileState();
  }
}

class BMICalcScreenMobileState extends ConsumerState<BMICalcScreen> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        ref.read(isMaleProvider.notifier).state = true;
                      },
                      color: ref.watch(isMaleProvider)
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                        color: ref.watch(isMaleProvider)
                            ? kOrangeFlame
                            : kBackGroundGrey,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          ref.read(isMaleProvider.notifier).state = false;
                        });
                      },
                      color: !ref.watch(isMaleProvider)
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                        color: !ref.watch(isMaleProvider)
                            ? kOrangeFlame
                            : kBackGroundGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {},
                color: kActiveCardColour,
                cardChild: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            ref.watch(userHeightProvider).toString(),
                            style: kNumberTextStyle,
                          ),
                          Text(
                            'cm',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: kGreyCharcoal,
                          activeTrackColor: kBackGroundGrey,
                          thumbColor: kOrangeFlame,
                          overlayColor: kBackGroundGrey,
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 12,
                          ),
                          overlayShape:
                              const RoundSliderOverlayShape(overlayRadius: 24),
                        ),
                        child: Slider(
                          value: ref.watch(userHeightProvider).toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (double newValue) async {
                            await ref
                                .read(userHeightProvider.notifier)
                                .setHeight(newValue.toInt());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Text>[
                              Text(
                                ref.watch(userWeightProvider).toString(),
                                style: kNumberTextStyle,
                              ),
                              Text(
                                'kg',
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  ref
                                      .read(userWeightProvider.notifier)
                                      .decreaseOne();
                                },
                                onLongPressed: () {
                                  ref
                                      .read(userWeightProvider.notifier)
                                      .decreaseTen();
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  ref
                                      .read(userWeightProvider.notifier)
                                      .increaseOne();
                                },
                                onLongPressed: () {
                                  ref
                                      .read(userWeightProvider.notifier)
                                      .increaseTen();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      onPress: () {},
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Text>[
                              Text(
                                ref.watch(userAgeProvider).toString(),
                                style: kNumberTextStyle,
                              ),
                              Text(
                                'yr',
                                style: kLabelTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  ref
                                      .read(userAgeProvider.notifier)
                                      .decreaseOne();
                                },
                                onLongPressed: () {
                                  ref
                                      .read(userAgeProvider.notifier)
                                      .decreaseTen();
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  ref
                                      .read(userAgeProvider.notifier)
                                      .increaseOne();
                                },
                                onLongPressed: () {
                                  ref
                                      .read(userAgeProvider.notifier)
                                      .increaseTen();
                                },
                              )
                            ],
                          )
                        ],
                      ),
                      onPress: () {},
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
                buttonTitle: 'CALCULATE',
                onTap: () async {
                  await ref.read(userBMIProvider.notifier).calculateBMI(
                        ref,
                        ref.watch(userHeightProvider),
                        ref.watch(userWeightProvider),
                      );
                  await ref.read(userBMIProvider.notifier).getResult(
                        ref,
                        ref.watch(userBMIProvider),
                      );
                  await ref
                      .read(userBMIProvider.notifier)
                      .getInterpretation(
                        ref,
                        ref.watch(userBMIProvider),
                      )
                      .then((_) async {
                    if (screenWidth < 720) {
                      await Navigator.push(context, MaterialPageRoute<Widget>(
                          builder: (BuildContext context) {
                        return const BMICalcOutputScreenMobile();
                      }));
                    } else {
                      await Navigator.push(context, MaterialPageRoute<Widget>(
                          builder: (BuildContext context) {
                        return const BMICalcOutputScreenDesktop();
                      }));
                    }
                  });
                }),
          ],
        ),
      ),
    );
  }
}

class BMICalcOutputScreenMobile extends ConsumerWidget {
  const BMICalcOutputScreenMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your Result',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      ref.watch(userResultProvider).toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      ref.watch(userBMIProvider),
                      style: kBMITextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                      ),
                      child: Text(
                        ref.watch(userInterpretationProvider),
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle,
                      ),
                    ),
                  ],
                ),
                onPress: () {},
              ),
            ),
            BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

class BMICalcOutputScreenDesktop extends StatelessWidget {
  const BMICalcOutputScreenDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.kElectricBlue,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(
              height: 480,
              width: 240,
              child: Column(
                children: <Widget>[
                  Text(
                    '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // Set up width and height for the 'smartphone'.
              width: 400,
              height: 700,
              decoration: BoxDecoration(
                borderRadius:
                    // Phones have rounded corners.
                    BorderRadius.circular(40),
                // Phone body color.
                color: Utils.kGunMetal,
                boxShadow: <BoxShadow>[
                  // This creates a shadow effect to give some 3D appearance
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(
                    25.0), // This gives the edge around the screen
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(24),
                  ),
                  child: ColoredBox(
                    color: Utils.kLightGrey,
                    child: const BMICalcOutputScreenMobile(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
