import 'package:agtmovel/src/service/athentication_service.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AthenticationController {
  final Ref ref;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController userNameInputControl = TextEditingController();
  final TextEditingController passwordInputControl = TextEditingController();

  AthenticationController({
    required this.ref,
  });

  Future<bool> login() async {
    return ref.read(authenticationProvider.notifier).login(
          userNameInputControl.text,
          passwordInputControl.text,
        );
  }
}

final athenticationController = Provider<AthenticationController>(
  (ref) {
    return AthenticationController(
      ref: ref,
    );
  },
);
