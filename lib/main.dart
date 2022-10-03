import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/future_provider_page.dart';
import 'package:riverpod_example/home_page.dart';
import 'package:riverpod_example/provider_page.dart';
import 'package:riverpod_example/state_provider_page.dart';
import 'package:riverpod_example/stream_provider_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Provider Page....
      // home: ProviderPage(),
      // State Provider Page....
      // home: StateProviderPage(),
      // Future Provider Page....
      // home: FutureProviderPage(),
      // Stream Provider Page....
      // home: StreamProviderPage(),
      home: HomePage(),
    );
  }
}
