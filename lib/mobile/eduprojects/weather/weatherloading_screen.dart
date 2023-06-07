import 'dart:async';

import 'package:portfolio/all_imports.dart';

class WeatherLoadingScreenMobile extends StatefulWidget {
  const WeatherLoadingScreenMobile({super.key});

  @override
  WeatherLoadingScreenMobileState createState() {
    return WeatherLoadingScreenMobileState();
  }
}

class WeatherLoadingScreenMobileState
    extends State<WeatherLoadingScreenMobile> {
  @override
  void initState() {
    super.initState();
    unawaited(getLocationData());
  }

  Future<void> getLocationData() async {
    final WeatherModel weatherModel = WeatherModel();
    final dynamic weatherData = await weatherModel.getLocationWeather();

    if (mounted) {
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute<Widget>(
          builder: (BuildContext context) {
            return WeatherScreenMobile(
              locationWeather: weatherData,
            );
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Fetching your location and requesting permissions...'),
            SizedBox(height: 16),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
