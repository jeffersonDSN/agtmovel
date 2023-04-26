import 'package:agtmovel/src/model/authentication_model.dart';
import 'package:agtmovel/src/repository/authentication_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthenticationService extends StateNotifier<AuthenticationModel?> {
  final Ref ref;
  final AuthenticationRepository repository;

  AuthenticationService({
    required this.ref,
    required this.repository,
    required AuthenticationModel? authentication,
  }) : super(authentication);

  Future<bool> login(String userName, String password) async {
    state = await repository.login(userName, password);

    return Future(() => state != null);
  }
}

final authenticationProvider =
    StateNotifierProvider<AuthenticationService, AuthenticationModel?>(
  (ref) {
    return AuthenticationService(
      ref: ref,
      repository: ref.watch(authenticationRepositoryProvider),
      authentication: null,
    );
  },
);
