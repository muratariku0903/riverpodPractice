// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';
// Project imports:
import 'package:riverpod_practice/presentation/pages/input_page.dart';
import 'package:riverpod_practice/presentation/pages/result_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Riverpod Practice',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const InputPage(),
        '/result': (context) => const ResultPage(),
      },
    );
  }
}
