import 'package:riverpod_practice/domain/model/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserService extends StateNotifier<User> {
  UserService({required User state}) : super(state);

  void setUser({required String name, required String email}) {
    state = state.copyWith(name: name, email: email);
  }
}

final userServiceProvider =
    StateNotifierProvider.autoDispose<UserService, User>(
  (ref) => UserService(state: const User()),
);
