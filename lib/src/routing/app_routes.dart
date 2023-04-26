import 'package:agtmovel/src/common/enum/routes_enums.dart';
import 'package:agtmovel/src/model/authentication_model.dart';
import 'package:agtmovel/src/page/page.dart';
import 'package:agtmovel/src/service/athentication_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    final router = RouterNotifier(ref);

    return GoRouter(
      refreshListenable: router,
      initialLocation: Routes.splash.path.value,
      routes: <GoRoute>[
        GoRoute(
          path: Routes.splash.path.value,
          pageBuilder: (context, state) => const MaterialPage(
            child: SplashPage(),
            fullscreenDialog: true,
          ),
        ),
        GoRoute(
          path: Routes.signIn.path.value,
          pageBuilder: (context, state) => const MaterialPage(
            child: LoginPage(),
            fullscreenDialog: true,
          ),
        ),
        GoRoute(
          path: Routes.home.path.value,
          pageBuilder: (context, state) => const MaterialPage(
            child: HomePage(),
            fullscreenDialog: true,
          ),
        ),
      ],
    );
  },
);

class RouterNotifier extends ChangeNotifier {
  final Ref ref;

  RouterNotifier(this.ref) {
    ref.listen<AuthenticationModel?>(
      authenticationProvider.select((value) => value),
      (AuthenticationModel? previous, AuthenticationModel? next) {
        notifyListeners();
      },
    );
  }
}
