import 'package:portfolio/all_imports.dart';

class WeatherLocationScreenMobile extends StatefulWidget {
  const WeatherLocationScreenMobile({this.locationWeather, super.key});

  final dynamic locationWeather;

  @override
  WeatherLocationScreenMobileState createState() =>
      WeatherLocationScreenMobileState();
}

class WeatherLocationScreenMobileState
    extends State<WeatherLocationScreenMobile> {
  WeatherModel weather = WeatherModel();
  late int temperature;
  late String weatherIcon;
  late String cityName;
  late String weatherMessage;

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        temperature = 0;
        weatherIcon = 'Error';
        weatherMessage = 'Unable to get weather data';
        cityName = '';
        return;
      }
      final double temp = double.parse(weatherData['main']['temp'].toString());
      temperature = temp.toInt();
      final int condition =
          int.parse(weatherData['weather'][0]['id'].toString());
      weatherIcon = weather.getWeatherIcon(condition);
      weatherMessage = weather.getMessage(temperature);
      cityName = weatherData['name'].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () async {
                      final dynamic weatherData =
                          await weather.getLocationWeather();
                      updateUI(weatherData);
                    },
                    child: const Icon(
                      FontAwesomeIcons.locationArrow,
                      size: 50,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final Widget? typedName = await Navigator.push(
                        context,
                        MaterialPageRoute<Widget>(
                          builder: (BuildContext context) {
                            return const WeatherCityScreenMobile();
                          },
                        ),
                      );
                      if (typedName != null) {
                        final dynamic weatherData =
                            await weather.getCityWeather('$typedName');
                        updateUI(weatherData);
                      }
                    },
                    child: const Icon(
                      FontAwesomeIcons.locationCrosshairs,
                      size: 50,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '$temperature°',
                    style: const TextStyle(
                      fontSize: 100,
                    ),
                  ),
                  Text(
                    weatherIcon,
                  ),
                ],
              ),
              Text(
                '$weatherMessage in $cityName',
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 36,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
