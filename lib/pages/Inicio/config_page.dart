import 'package:app_cas_natal/assets/cores.dart';
import 'package:app_cas_natal/widgets/botoes/bt_laranja.dart';
import 'package:app_cas_natal/widgets/botoes/bt_outline.dart';
import 'package:app_cas_natal/widgets/vizualizacao/foto.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfiguracoesPage extends StatefulWidget {
  const ConfiguracoesPage({super.key});

  @override
  State<ConfiguracoesPage> createState() => _ConfiguracoesPageState();
}

class _ConfiguracoesPageState extends State<ConfiguracoesPage> {
  final cores = Cores();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Configurações')),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 15),
                    FotoWidget(tam: 30),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mariana Araújo Silva',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'mariana.araujo@email.com',
                          style: TextStyle(
                            color: cores.azulEscuro,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 15),

                BotaoLaranjaWidget(
                  txt: 'Editar perfil',
                  onPressed: () {
                    context.goNamed('EditarPerfil');
                  },
                  tam: 350,
                ),

                SizedBox(height: 50),
                BotaoOutlineWidget(
                  onPressed: () {},
                  txt: 'Preferências',
                  tam: 350,
                  iconInicio: Icons.tune,
                ),
                SizedBox(height: 15),
                BotaoOutlineWidget(
                  onPressed: () {},
                  txt: 'Favoritos',
                  tam: 350,
                  iconInicio: Icons.favorite,
                ),
                SizedBox(height: 15),
                BotaoOutlineWidget(
                  onPressed: () {},
                  txt: 'Estatísticas',
                  tam: 350,
                  iconInicio: Icons.bar_chart,
                ),
                SizedBox(height: 15),
                BotaoOutlineWidget(
                  onPressed: () {},
                  txt: 'Redefinir senha',
                  tam: 350,
                  iconInicio: Icons.lock,
                ),
                SizedBox(height: 15),
                BotaoOutlineWidget(
                  onPressed: () {},
                  txt: 'Sobre o app',
                  tam: 350,
                  iconInicio: Icons.info,
                ),
                SizedBox(height: 15),
                BotaoOutlineWidget(
                  onPressed: () {},
                  txt: 'Termos de serviço',
                  tam: 350,
                  iconInicio: Icons.description,
                ),
                SizedBox(height: 15),
                BotaoOutlineWidget(
                  onPressed: () {},
                  txt: 'Sair',
                  tam: 350,
                  iconInicio: Icons.logout,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
