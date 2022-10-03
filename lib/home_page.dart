import 'package:flutter/material.dart';
import 'package:riverpod_example/future_provider_page.dart';
import 'package:riverpod_example/provider_page.dart';
import 'package:riverpod_example/state_provider_page.dart';
import 'package:riverpod_example/stream_provider_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Provider Button...
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProviderPage()),
                );
              },
              child: const Text(
                'Provider',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            // State Provider...
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StateProviderPage()),
                );
              },
              child: const Text(
                'State Provider',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            // Future Provider...
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FutureProviderPage()),
                );
              },
              child: const Text(
                'Future Provider',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            // Stream Provider...
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StreamProviderPage()),
                );
              },
              child: const Text(
                'Stream Provider',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
