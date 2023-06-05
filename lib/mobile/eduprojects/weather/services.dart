import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/all_imports.dart';

// Determine the current position of the device.
// When the location services are not enabled or permissions
// are denied the `Future` will return an error.
Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Future<Position>.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future<Position>.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future<Position>.error(
      'Location permissions are permanently denied, '
      'we cannot request permissions.',
    );
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return Geolocator.getCurrentPosition(
    desiredAccuracy: LocationAccuracy.high,
  );
}

class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      await determinePosition();
      final Position position = await determinePosition();

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future<dynamic> getData() async {
    final http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final String data = response.body;

      return jsonDecode(data);
    } else {
      if (kDebugMode) {
        print(response.statusCode);
      }
    }
  }
}

const String apiKey = 'fa5c9b4de78bd4575fb68f2ec0e78b19';
const String openWeatherMapURL =
    'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    final NetworkHelper networkHelper = NetworkHelper(
      '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric',
    );

    final dynamic weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    final Location location = Location();
    await location.getCurrentLocation();

    final NetworkHelper networkHelper = NetworkHelper(
      '$openWeatherMapURL?lat=${location.latitude}&lon='
      '${location.longitude}&appid=$apiKey&units=metric',
    );

    final dynamic weatherData = await networkHelper.getData();
    return weatherData;
  }

  // TODO(plotsklapps): Return better icons via
  //  https://openweathermap.org/weather-conditions
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return "It's 🍦 time";
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return "You'll need 🧣 and 🧤";
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
