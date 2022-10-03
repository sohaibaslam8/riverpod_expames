import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamProvider = StreamProvider.autoDispose<String>(((ref) {
  return Stream.periodic(
      const Duration(milliseconds: 900), ((count) => '$count'));
}));

class StreamProviderPage extends ConsumerWidget {
  const StreamProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider Page'),
      ),
      body: Center(
        child: buildStreamBuilder(ref),
      ),
    );
  }

  Widget buildStreamBuilder(WidgetRef ref) {
    final _watch = ref.watch;
    final stream = _watch(streamProvider);
    return stream.when(
      data: (value) => Text(
        value,
        style: const TextStyle(fontSize: 40),
      ),
      loading: () => const CircularProgressIndicator(),
      error: (e, stack) => Text('Error: $e'),
    );
    // StreamBuilder<String>(
    //   stream: stream,
    //   builder: ((context, snapshot) {
    //     switch (snapshot.connectionState) {
    //       case ConnectionState.waiting:
    //         return const CircularProgressIndicator();
    //       default:
    //         if (snapshot.hasError) {
    //           return Text('Error: ${snapshot.hasError}');
    //         } else {
    //           final counter = snapshot.hasData;
    //           return Text(
    //             counter.toString(),
    //             style: const TextStyle(
    //               fontSize: 40,
    //             ),
    //           );
    //         }
    //     }
    //   }),
    // );
  }
}
