import 'dart:async';

import 'package:portfolio/all_imports.dart';

class WeatherLoadingScreenMobile extends StatefulWidget {
  const WeatherLoadingScreenMobile({super.key});

  @override
  State<StatefulWidget> createState() {
    return WeatherLoadingScreenMobileState();
  }
}

class WeatherLoadingScreenMobileState
    extends State<WeatherLoadingScreenMobile> {
  // Fetch the location data as soon as the app launches
  @override
  void initState() {
    super.initState();
    unawaited(getLocationData());
  }

  Future<void> getLocationData() async {
    // Get the weather for the current location
    final dynamic weatherData = await WeatherModel().getLocationWeather();

    if (mounted) {
      // Navigate to the location screen and pass the weather data
      await Navigator.of(context).pushReplacement(
        MaterialPageRoute<Widget>(
          builder: (BuildContext context) {
            return WeatherLocationScreenMobile(locationWeather: weatherData);
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        // While waiting for data, show a loading spinner.
        child: CircularProgressIndicator(),
      ),
    );
  }
}
