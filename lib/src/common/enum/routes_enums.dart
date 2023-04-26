import 'package:agtmovel/src/common/enum/paths_enums.dart';

enum Routes {
  splash(
    path: Paths.splash,
    title: '',
  ),

  signIn(
    path: Paths.login,
    title: 'Sign-in',
  ),

  home(
    path: Paths.home,
    title: 'Home',
  );

  final Paths path;
  final String title;

  const Routes({
    required this.path,
    required this.title,
  });
}
