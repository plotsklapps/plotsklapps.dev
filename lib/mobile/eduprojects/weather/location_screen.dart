import 'package:portfolio/all_imports.dart';

class WeatherLocationScreenMobile extends StatefulWidget {
  const WeatherLocationScreenMobile({super.key, this.locationWeather});

  final dynamic locationWeather;

  @override
  WeatherLocationScreenMobileState createState() {
    return WeatherLocationScreenMobileState();
  }
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
      final dynamic temp = weatherData['main']['temp'];
      temperature = int.parse(temp.toString());
      final int condition =
          int.parse(weatherData['weather'][0]['id'].toString());
      weatherIcon = weather.getWeatherIcon(condition);
      weatherMessage = weather.getMessage(temperature);
      cityName = weatherData['name'].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () async {
                      var weatherData = await weather.getLocationWeather();
                      updateUI(weatherData);
                    },
                    child: const Icon(
                      Icons.location_on,
                      size: 50.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final typedName = await Navigator.push(
                        context,
                        MaterialPageRoute<Widget>(
                          builder: (BuildContext context) {
                            return const WeatherCityScreenMobile();
                          },
                        ),
                      );
                      if (typedName != null) {
                        var weatherData =
                            await weather.getCityWeather(cityName);
                        updateUI(weatherData);
                      }
                    },
                    child: const Icon(
                      Icons.location_searching,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  const SizedBox(width: 25.0),
                  Text(
                    '$temperature°',
                    style: const TextStyle(
                      fontSize: 100.0,
                    ),
                  ),
                  Text(
                    weatherIcon,
                    style: const TextStyle(
                      fontSize: 75.0,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        weatherMessage,
                        style: const TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                      const SizedBox(width: 25.0),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'in $cityName',
                        style: const TextStyle(
                          fontSize: 28.0,
                        ),
                      ),
                      const SizedBox(width: 25.0),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
