import 'package:app_cas_natal/assets/color/cores.dart';
import 'package:app_cas_natal/widgets/modulos/modulo2_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key});

  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  final cores = Cores();

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
            style: ButtonStyle(
              overlayColor: WidgetStateProperty.all(cores.azulClaro),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Image.asset(
                'lib/assets/images/logo_cas_transparente.png',
                width: 200,
                height: 150,
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Módulos em andamento',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  CardModulo2Widget(onPressed: () {}),

                  SizedBox(height: 25),
                  Text(
                    'Estatísticas',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
