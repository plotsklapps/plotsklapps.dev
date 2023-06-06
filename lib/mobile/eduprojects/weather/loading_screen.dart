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
  @override
  Future<void> initState() async {
    super.initState();
    await getLocationData();
  }

  Future<void> getLocationData() async {
    final dynamic weatherData = await WeatherModel().getLocationWeather();

    if (mounted) {
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
        child: CircularProgressIndicator(),
      ),
    );
  }
}
