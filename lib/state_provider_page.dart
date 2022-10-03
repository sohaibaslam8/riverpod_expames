import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateProvider = StateProvider<int>(((ref) => 0));

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(stateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'State Provider',
        ),
      ),
      body: Center(
        child: Text(
          provider.toString(),
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(stateProvider.notifier).state++;
        },
      ),
    );
  }
}
