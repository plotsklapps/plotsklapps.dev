import 'package:portfolio/all_imports.dart';

class WeatherCityScreenMobile extends StatefulWidget {
  const WeatherCityScreenMobile({super.key});

  @override
  WeatherCityScreenMobileState createState() {
    return WeatherCityScreenMobileState();
  }
}

class WeatherCityScreenMobileState extends State<WeatherCityScreenMobile> {
  late String cityName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter City Name',
                ),
                onChanged: (value) {
                  cityName = value;
                },
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, cityName);
                },
                child: const Text(
                  'Get Current Weather',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
