// ignore_for_file: avoid_dynamic_calls

import 'package:portfolio/all_imports.dart';

class WeatherScreenMobile extends StatefulWidget {
  final dynamic locationWeather;
  const WeatherScreenMobile({
    super.key,
    this.locationWeather,
  });

  @override
  WeatherScreenMobileState createState() {
    return WeatherScreenMobileState();
  }
}

class WeatherScreenMobileState extends State<WeatherScreenMobile> {
  double temperature = 0;
  int condition = 0;
  IconData weatherIcon = FontAwesomeIcons.solidCircleQuestion;
  double tempMin = 0.0;
  double tempMax = 0.0;
  String cityName = 'Not able to fetch data';
  WeatherModel weatherModel = WeatherModel();

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weather) {
    setState(() {
      temperature = weather['main']['temp'] as double;
      condition = weather['weather'][0]['id'] as int;
      weatherIcon = weatherModel.getWeatherIcon(condition);
      tempMin = weather['main']['temp_min'] as double;
      tempMax = weather['main']['temp_max'] as double;
      cityName = weather['name'] as String;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 50,
              left: 100,
              child: Icon(
                weatherIcon,
                size: 300,
                color: Utils.kFlame,
              ),
            ).animate().fadeIn(
                  duration: const Duration(milliseconds: 2000),
                ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const Text('Use current location'),
                          IconButton(
                            onPressed: () async {
                              final dynamic weatherData =
                                  await weatherModel.getLocationWeather();
                              updateUI(weatherData);
                            },
                            icon: const Icon(
                              FontAwesomeIcons.locationDot,
                              size: 36,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      const Text('Check the weather in another city'),
                      const SizedBox(height: 16),
                      TextField(
                        onChanged: (String value) {
                          cityName = value;
                        },
                        decoration: const InputDecoration(
                          label: Text(
                            'Enter city name',
                          ),
                          icon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Icon(FontAwesomeIcons.city),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () async {
                          final dynamic weatherData =
                              await weatherModel.getCityWeather(cityName);
                          updateUI(weatherData);
                        },
                        child: const Text(
                          'Get Weather',
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              '${temperature.toStringAsFixed(1)} °C',
                              style: const TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Current minimum: ${tempMin.toStringAsFixed(1)} °C',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Current maximum: ${tempMax.toStringAsFixed(1)} °C',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        cityName,
                        style: const TextStyle(
                          fontSize: 36,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
