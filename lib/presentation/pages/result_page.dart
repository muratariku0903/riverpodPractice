import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_practice/domain/service/user.dart';

class ResultPage extends ConsumerWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(userServiceProvider);
    print(state.name);
    print(state.email);

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Riverpod Practice')),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            Text(
              'Result Page',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
