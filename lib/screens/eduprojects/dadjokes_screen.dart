import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const String secretAPI = '31f0e18aa0msh7ac1cf7f28b021cp1a3527jsnf0116cb148cc';

class DadJokesScreen extends StatefulWidget {
  const DadJokesScreen({super.key});

  @override
  State<DadJokesScreen> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<DadJokesScreen> {
  String joke = 'Loading...';
  String punchLine = 'Tap for punchline...';
  bool isPunchlineVisible = false;

  Future<void> fetchJoke() async {
    setState(() {
      isPunchlineVisible = false;
    });

    final http.Response response = await http.get(
      Uri.parse('https://dad-jokes.p.rapidapi.com/random/joke'),
      headers: <String, String>{
        'X-RapidAPI-Key': secretAPI,
        'X-RapidAPI-Host': 'dad-jokes.p.rapidapi.com',
      },
    );

    if (response.statusCode == 200) {
      final dynamic data = jsonDecode(response.body);
      final String setup = data['body'][0]['setup'] as String;
      final String punchline = data['body'][0]['punchline'] as String;
      setState(() {
        joke = setup;
        punchLine = punchline;
      });
    } else {
      setState(() {
        joke = 'Failed to load joke';
        punchLine = '';
      });
    }
  }

  void showPunchline() {
    setState(() {
      isPunchlineVisible = true;
    });
  }

  @override
  void initState() {
    super.initState();
    unawaited(fetchJoke());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dad jokes'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    joke,
                    style: const TextStyle(fontSize: 24.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              if (isPunchlineVisible)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      punchLine,
                      style: const TextStyle(fontSize: 24.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              else
                const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isPunchlineVisible ? unawaited(fetchJoke()) : showPunchline();
        },
        child: isPunchlineVisible
            ? const Icon(Icons.refresh)
            : const Icon(Icons.question_mark_rounded),
      ),
    );
  }
}
