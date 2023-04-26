import 'package:agtmovel/src/common/enum/paths_enums.dart';
import 'package:agtmovel/src/routing/app_routes.dart';
import 'package:agtmovel/src/theme/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:agtmovel/src/page/athenticarion/login/login_controller.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AthenticationController controller = ref.watch(athenticationController);

    login() {
      if (controller.formKey.currentState!.validate()) {
        ref.read(athenticationController).login();
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
        child: Form(
          key: controller.formKey,
          child: Center(
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    AppAsset.logoAGTBlue,
                    height: 112,
                  ),
                  const SizedBox(height: 32),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline),
                    ),
                    controller: controller.userNameInputControl,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Informe o usuário';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ),
                    ),
                    controller: controller.passwordInputControl,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Informe a senha';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () => login(),
                    child: const Text('Iniciar Sessão'),
                  ),
                  const SizedBox(height: 32),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Esqueceu a palavra-passe?'),
                  ),
                  const SizedBox(height: 8),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Solicitar novo acesso'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
