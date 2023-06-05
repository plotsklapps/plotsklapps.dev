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
    return Scaffold(
      appBar: AppBar(
        title: const Text('City Screen'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                onChanged: (String value) {
                  cityName = value;
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, cityName);
              },
              child: const Text(
                'Get Weather',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
