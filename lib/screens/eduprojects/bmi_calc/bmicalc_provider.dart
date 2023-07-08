import 'package:portfolio/all_imports.dart';

final StateProvider<bool> isMaleProvider =
    StateProvider<bool>((StateProviderRef<bool> ref) {
  return true;
});

final StateProvider<double> userHeightProvider =
    StateProvider<double>((StateProviderRef<double> ref) {
  return 180.0;
});

final StateProvider<int> userWeightProvider = StateProvider<int>((ref) {
  return 70;
});

final StateNotifierProvider<UserAgeNotifier, int> userAgeProvider =
    StateNotifierProvider<UserAgeNotifier, int>(
        (StateNotifierProviderRef<UserAgeNotifier, int> ref) {
  return UserAgeNotifier();
});

class UserAgeNotifier extends StateNotifier<int> {
  UserAgeNotifier() : super(20);

  Future<void> setAge(int age) async {
    state = age;
  }

  void increaseOne() {
    state++;
  }

  void increaseTen() {
    state += 10;
  }

  void decreaseOne() {
    state--;
  }

  void decreaseTen() {
    state -= 10;
  }
}

final StateProvider<String> userResultProvider =
    StateProvider<String>((StateProviderRef<String> ref) {
  return 'Normal';
});

final StateProvider<String> userInterpretationProvider =
    StateProvider<String>((StateProviderRef<String> ref) {
  return 'You have a normal body weight. You must look really good!';
});

final StateNotifierProvider<UserBMINotifier, String> userBMIProvider =
    StateNotifierProvider<UserBMINotifier, String>(
        (StateNotifierProviderRef<UserBMINotifier, String> ref) {
  return UserBMINotifier();
});

class UserBMINotifier extends StateNotifier<String> {
  UserBMINotifier() : super('0');

  Future<void> calculateBMI(WidgetRef ref, int height, int weight) async {
    final double userBMI = weight / pow(height / 100, 2);
    final String userBMIString = userBMI.toStringAsFixed(1);
    ref.read(userBMIProvider.notifier).state = userBMIString;
  }

  Future<void> getResult(WidgetRef ref, String userBMIString) async {
    if (userBMIString.compareTo('25') >= 0) {
      ref.read(userResultProvider.notifier).state = 'Overweight';
    } else if (userBMIString.compareTo('18.5') > 0) {
      ref.read(userResultProvider.notifier).state = 'Normal';
    } else {
      ref.read(userResultProvider.notifier).state = 'Underweight';
    }
  }

  Future<void> getInterpretation(WidgetRef ref, String userBMIString) async {
    if (userBMIString.compareTo('25') >= 0) {
      ref.read(userInterpretationProvider.notifier).state =
          'You have a higher than normal body weight. '
          'Are you THAT muscular?.';
    } else if (userBMIString.compareTo('18.5') > 0) {
      ref.read(userInterpretationProvider.notifier).state =
          'You have a normal body weight. You must look really good!';
    } else {
      ref.read(userInterpretationProvider.notifier).state =
          'You have a lower than normal body weight. Try to eat more and '
          'work out more often :)';
    }
  }
}
