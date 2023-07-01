import 'package:portfolio/all_imports.dart';

// Riverpod int Provider for the left dice.
final StateProvider<int> leftDiceProvider =
    StateProvider<int>((StateProviderRef<int> ref) {
  return 1;
});

// Riverpod int Provider for the right dice.
final StateProvider<int> rightDiceProvider =
    StateProvider<int>((StateProviderRef<int> ref) {
  return 1;
});

class DiceScreen extends ConsumerWidget {
  const DiceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Function to change the state of the Riverpod Providers randomly between
    // 1 and 6.
    void rollDice() {
      ref.read(leftDiceProvider.notifier).state = Random().nextInt(6) + 1;
      ref.read(rightDiceProvider.notifier).state = Random().nextInt(6) + 1;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicee'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: rollDice,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: FlexColor.outerSpaceLightPrimary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Image.asset(
                        'assets/images/dice/dice${ref.watch(leftDiceProvider)}.png',
                      ),
                    ),
                  ),
                ).animate().flip(delay: 0.ms, duration: 1000.ms),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: rollDice,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: FlexColor.outerSpaceLightPrimary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Image.asset(
                        'assets/images/dice/dice${ref.watch(rightDiceProvider)}.png',
                      ),
                    ),
                  ),
                ).animate().flip(delay: 1000.ms, duration: 1000.ms),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
