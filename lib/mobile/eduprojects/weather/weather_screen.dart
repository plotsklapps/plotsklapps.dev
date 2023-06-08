// ignore_for_file: avoid_dynamic_calls

import 'package:portfolio/all_imports.dart';

class WeatherScreenMobile extends ConsumerStatefulWidget {
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

class WeatherScreenMobileState extends ConsumerState<WeatherScreenMobile> {
  late double temperature;
  late int condition;
  late IconData weatherIcon;
  late double tempMin;
  late double tempMax;
  late String cityName;
  WeatherModel weatherModel = WeatherModel();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      temperature = ref.watch(weatherTempProvider);
      condition = ref.watch(weatherConditionProvider);
      weatherIcon = ref.watch(weatherIconDataProvider);
      tempMin = ref.watch(weatherTempMinProvider);
      tempMax = ref.watch(weatherTempMaxProvider);
      cityName = ref.watch(weatherCityNameProvider);
      updateUI(widget.locationWeather);
    });
  }

  void updateUI(dynamic weather) {
    ref.read(weatherTempProvider.notifier).state =
        weather['main']['temp'] as double;
    ref.read(weatherConditionProvider.notifier).state =
        weather['weather'][0]['id'] as int;
    ref.read(weatherIconDataProvider.notifier).state =
        weatherModel.getWeatherIcon(ref.watch(weatherConditionProvider));
    ref.read(weatherTempMinProvider.notifier).state =
        weather['main']['temp_min'] as double;
    ref.read(weatherTempMaxProvider.notifier).state =
        weather['main']['temp_max'] as double;
    ref.read(weatherCityNameProvider.notifier).state =
        weather['name'] as String;
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
                ref.watch(weatherIconDataProvider),
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
                              await weatherModel.getCityWeather(
                            ref,
                            cityName,
                          );
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
                              '${ref.watch(weatherTempProvider).toStringAsFixed(1)} °C',
                              style: const TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Current minimum: ${ref.watch(weatherTempMinProvider).toStringAsFixed(1)} °C',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Current maximum: ${ref.watch(weatherTempMaxProvider).toStringAsFixed(1)} °C',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        ref.watch(weatherCityNameProvider),
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
