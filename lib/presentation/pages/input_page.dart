// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:riverpod_practice/domain/service/user.dart';

class InputPage extends ConsumerWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final notifier = ref.watch(userServiceProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Riverpod Practice')),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Input Page',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(hintText: 'Name'),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            const SizedBox(height: 28),
            ElevatedButton(
              child: const Text('Post'),
              onPressed: () async {
                notifier.setUser(
                  name: nameController.text,
                  email: emailController.text,
                );
                Navigator.pushNamed(context, '/result');
              },
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
