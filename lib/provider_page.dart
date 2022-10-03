import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final numberProvider = Provider<int>((ref) => 48);

class ProviderPage extends ConsumerWidget {
  const ProviderPage({super.key});
  @override
  Widget build(BuildContext context, ref) {
    final number = ref.watch(numberProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
          child: Text(
        number.toString(),
        style: const TextStyle(
          fontSize: 24,
        ),
      )),
    );
  }
}
