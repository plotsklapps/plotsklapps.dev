// Ignoring a linter rule because I'm working with JSON data and I find
// a dynamic call on a JSON file more readable.
// ignore_for_file: avoid_dynamic_calls

import 'package:portfolio/all_imports.dart';

// It's a CONSUMERStatefulWidget because I want to use Riverpod for my
// state management.
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
  // Set up some variables. Make them 'late', because I will initialize them
  // in the initState().
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
    // Use WidgetsBinding.blabla to avoid changing state while building the UI
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // The variables created are being filled with their respective
      // providers.
      temperature = ref.watch(weatherTempProvider);
      condition = ref.watch(weatherConditionProvider);
      weatherIcon = ref.watch(weatherIconDataProvider);
      tempMin = ref.watch(weatherTempMinProvider);
      tempMax = ref.watch(weatherTempMaxProvider);
      cityName = ref.watch(weatherCityNameProvider);
      // Call the updateUI method, see below.
      updateUI(widget.locationWeather);
    });
  }

  // UpdateUI method fetches the latest weatherData for the current location
  // or cityName provided by the user. Each JSON data piece is stored in
  // their respective provider.
  void updateUI(dynamic weatherData) {
    ref.read(weatherTempProvider.notifier).state =
        weatherData['main']['temp'] as double;
    ref.read(weatherConditionProvider.notifier).state =
        weatherData['weather'][0]['id'] as int;
    ref.read(weatherIconDataProvider.notifier).state =
        weatherModel.getWeatherIcon(ref.watch(weatherConditionProvider));
    ref.read(weatherTempMinProvider.notifier).state =
        weatherData['main']['temp_min'] as double;
    ref.read(weatherTempMaxProvider.notifier).state =
        weatherData['main']['temp_max'] as double;
    ref.read(weatherCityNameProvider.notifier).state =
        weatherData['name'] as String;
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
                              // Asynchronous method, FIRST store the new
                              // weather data in variable weatherData, then
                              // call updateUI with the new data.
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          onChanged: (String value) {
                            // Purposely NOT updating the Riverpod provider here
                            // since that will change the UI on the fly, instead
                            // of after the button press
                            cityName = value;
                          },
                          decoration: const InputDecoration(
                            label: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Text>[
                                Text(
                                  'Enter city name',
                                ),
                              ],
                            ),
                            icon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Icon(FontAwesomeIcons.city),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () async {
                          // Asynchronous method, FIRST store the new
                          // weather data in variable weatherData, then call
                          // updateUI with the new data.
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
                              // Directly display the contents of the provider.
                              '''${ref.watch(weatherTempProvider).toStringAsFixed(1)} °C''',
                              style: const TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          // Directly display the contents of the provider.
                          '''Current minimum: ${ref.watch(weatherTempMinProvider).toStringAsFixed(1)} °C''',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          // Directly display the contents of the provider.
                          '''Current maximum: ${ref.watch(weatherTempMaxProvider).toStringAsFixed(1)} °C''',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        // Directly display the contents of the provider.
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
