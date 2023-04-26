import 'package:agtmovel/src/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:agtmovel/src/theme/theme.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  runApp(
    const ProviderScope(
      child: AGTmovel(),
    ),
  );
}

class AGTmovel extends ConsumerWidget {
  const AGTmovel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch<GoRouter>(routerProvider);

    return MaterialApp.router(
      title: 'AGT mobile',
      theme: AppTheme.mainTheme,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}
