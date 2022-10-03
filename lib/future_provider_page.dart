import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<int> fetchWeather() async {
  await Future.delayed(const Duration(seconds: 2));
  return 20;
}

final futureProvider = FutureProvider<int>((ref) => fetchWeather());

class FutureProviderPage extends ConsumerWidget {
  const FutureProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final future = ref.watch(futureProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Future Provider'),
        ),
        body: Center(
            child: future.when(
          data: (value) => Text(
            value.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          error: ((error, stackTrace) => Text('Error: $error')),
          loading: (() => const CircularProgressIndicator()),
        )));
  }
}
