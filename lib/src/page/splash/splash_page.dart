import 'package:agtmovel/src/common/enum/paths_enums.dart';
import 'package:agtmovel/src/routing/app_routes.dart';
import 'package:agtmovel/src/theme/app_assets.dart';
import 'package:agtmovel/src/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future.delayed(const Duration(milliseconds: 2000), () {
      ref.read(routerProvider).pushReplacement(Paths.login.value);
    });

    return Material(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          decoration: const BoxDecoration(
            gradient: AppColor.loginGradient,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 300,
                child: Image.asset(AppAsset.logoTis),
              ),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(height: 24),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Inicializando',
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  const SizedBox(
                    height: 4,
                    width: 80,
                    child: LinearProgressIndicator(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
