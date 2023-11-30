import 'package:portfolio/all_imports.dart';

class BMICalcScreen extends ConsumerStatefulWidget {
  const BMICalcScreen({super.key});

  @override
  BMICalcScreenState createState() {
    return BMICalcScreenState();
  }
}

class BMICalcScreenState extends ConsumerState<BMICalcScreen> {
  @override
  Widget build(BuildContext context) {
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
                          ? BMICalcUtils.kGreyElectricBlue
                          : BMICalcUtils.kGreyGunmetal,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                        color: ref.watch(isMaleProvider)
                            ? BMICalcUtils.kOrangeFlame
                            : BMICalcUtils.kBackGroundGrey,
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
                          ? BMICalcUtils.kGreyElectricBlue
                          : BMICalcUtils.kGreyGunmetal,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                        color: !ref.watch(isMaleProvider)
                            ? BMICalcUtils.kOrangeFlame
                            : BMICalcUtils.kBackGroundGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {},
                color: BMICalcUtils.kGreyElectricBlue,
                cardChild: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'HEIGHT',
                        style: BMICalcUtils.kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            ref.watch(userHeightProvider).toStringAsFixed(0),
                            style: BMICalcUtils.kNumberTextStyle,
                          ),
                          const Text(
                            'cm',
                            style: BMICalcUtils.kLabelTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: BMICalcUtils.kGreyCharcoal,
                          activeTrackColor: BMICalcUtils.kBackGroundGrey,
                          thumbColor: BMICalcUtils.kOrangeFlame,
                          overlayColor: BMICalcUtils.kBackGroundGrey,
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 12,
                          ),
                          overlayShape: const RoundSliderOverlayShape(
                            overlayRadius: 24,
                          ),
                        ),
                        child: Slider(
                          value: ref.watch(userHeightProvider),
                          min: 120,
                          max: 220,
                          onChanged: (double newValue) {
                            ref.read(userHeightProvider.notifier).state =
                                newValue;
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
                      color: BMICalcUtils.kGreyElectricBlue,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'WEIGHT',
                            style: BMICalcUtils.kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Text>[
                              Text(
                                ref.watch(userWeightProvider).toString(),
                                style: BMICalcUtils.kNumberTextStyle,
                              ),
                              const Text(
                                'kg',
                                style: BMICalcUtils.kLabelTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  ref.read(userWeightProvider.notifier).state -=
                                      1;
                                },
                                onLongPressed: () {
                                  ref.read(userWeightProvider.notifier).state -=
                                      10;
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  ref.read(userWeightProvider.notifier).state +=
                                      1;
                                },
                                onLongPressed: () {
                                  ref.read(userWeightProvider.notifier).state +=
                                      10;
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
                      color: BMICalcUtils.kGreyElectricBlue,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'AGE',
                            style: BMICalcUtils.kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Text>[
                              Text(
                                ref.watch(userAgeProvider).toString(),
                                style: BMICalcUtils.kNumberTextStyle,
                              ),
                              const Text(
                                'yr',
                                style: BMICalcUtils.kLabelTextStyle,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  ref.read(userAgeProvider.notifier).state -= 1;
                                },
                                onLongPressed: () {
                                  ref.read(userAgeProvider.notifier).state -=
                                      10;
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  ref.read(userAgeProvider.notifier).state += 1;
                                },
                                onLongPressed: () {
                                  ref.read(userAgeProvider.notifier).state +=
                                      10;
                                },
                              ),
                            ],
                          ),
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
                      ref.watch(userHeightProvider).toInt(),
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
                  await Navigator.push(
                    context,
                    MaterialPageRoute<Widget>(
                      builder: (BuildContext context) {
                        return const BMICalcOutputScreenMobile();
                      },
                    ),
                  );
                });
              },
            ),
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
                  style: BMICalcUtils.kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: BMICalcUtils.kGreyElectricBlue,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      ref.watch(userResultProvider).toUpperCase(),
                      style: BMICalcUtils.kResultTextStyle,
                    ),
                    Text(
                      ref.watch(userBMIProvider),
                      style: BMICalcUtils.kBMITextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                      ),
                      child: Text(
                        ref.watch(userInterpretationProvider),
                        textAlign: TextAlign.center,
                        style: BMICalcUtils.kBodyTextStyle,
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
            ),
          ],
        ),
      ),
    );
  }
}
