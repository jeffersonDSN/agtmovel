import 'package:agtmovel/src/common/widget/grid_view_card.dart';
import 'package:agtmovel/src/service/athentication_service.dart';
import 'package:agtmovel/src/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout_outlined,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.person,
                color: Colors.white,
                size: 48,
              ),
              Column(
                children: [
                  Text(
                    '${ref.watch(authenticationProvider)!.fristName} ${ref.watch(authenticationProvider)!.lastName}',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: AppColor.lightColor),
                  ),
                  Text(
                    'principal',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: AppColor.greyColorSwatch.shade200),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(48),
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 2,
        children: const <Widget>[
          GriViewCard(
            title: 'Cadastro',
            icon: Icons.app_registration_outlined,
          ),
          GriViewCard(
            title: 'Conta corrente',
            icon: Icons.account_balance_outlined,
          ),
          GriViewCard(
            title: 'Liquidação',
            icon: Icons.attach_money_outlined,
          ),
          GriViewCard(
            title: 'Calendário Fiscal',
            icon: Icons.calendar_month_outlined,
          ),
        ],
      ),
    );
  }
}
