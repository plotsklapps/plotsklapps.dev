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
  String cityName = '';
  Icon weatherIcon = const Icon(FontAwesomeIcons.solidCircleQuestion);
  String tempIcon = '';
  WeatherModel weatherModel = WeatherModel();

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weather) {
    setState(() {
      condition = weather['weather'][0]['id'] as int;
      weatherIcon = weatherModel.getWeatherIcon(condition);
      temperature = weather['main']['temp'] as double;
      tempIcon = weatherModel.getMessage(temperature);
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
        child: Padding(
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
                  children: <Row>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Icon>[
                        weatherIcon,
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '${temperature.toStringAsFixed(1)} °C',
                          style: const TextStyle(
                            fontSize: 64,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    '$tempIcon in $cityName',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
