import 'package:portfolio/all_imports.dart';

final StateNotifierProvider<UserHeightNotifier, int> userHeightProvider =
    StateNotifierProvider<UserHeightNotifier, int>(
        (StateNotifierProviderRef<UserHeightNotifier, int> ref) {
  return UserHeightNotifier();
});

class UserHeightNotifier extends StateNotifier<int> {
  UserHeightNotifier() : super(180);

  Future<void> setHeight(int height) async {
    state = height;
  }
}

final StateNotifierProvider<UserWeightNotifier, int> userWeightProvider =
    StateNotifierProvider<UserWeightNotifier, int>(
        (StateNotifierProviderRef<UserWeightNotifier, int> ref) {
  return UserWeightNotifier();
});

class UserWeightNotifier extends StateNotifier<int> {
  UserWeightNotifier() : super(70);

  Future<void> setWeight(int weight) async {
    state = weight;
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
