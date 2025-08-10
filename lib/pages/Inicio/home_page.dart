import 'package:app_cas_natal/widgets/botoes/bt_laranja.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem vindo!'),
        actions: [
          IconButton(
            onPressed: () {
              context.goNamed('Configuracoes');
            },
            icon: Icon(Icons.settings, size: 30),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('lib/assets/logo_cas.png', width: 250, height: 250),
            BotaoLaranjaWidget(txt: 'Omaga!', onPressed: () {}, tam: 120),
          ],
        ),
      ),
    );
  }
}
