import 'package:app_cas_natal/widgets/botoes/bt_menu_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gestão Admin')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              BotaoMenuWidget(
                onPressed: () {
                  context.goNamed('GestaoUsers');
                },
                txt: 'Gestão de usuários do sistema',
                tam: 360,
                iconInicio: Icons.people,
              ),
              SizedBox(height: 15),
              BotaoMenuWidget(
                onPressed: () {
                  context.goNamed('GestaoCurso');
                },
                txt: 'Cadastrar curso',
                tam: 360,
                iconInicio: Icons.school,
              ),
              SizedBox(height: 15),
              BotaoMenuWidget(
                onPressed: () {
                  context.goNamed('GestaoAula');
                },
                txt: 'Cadastrar aula',
                tam: 360,
                iconInicio: Icons.play_circle_fill,
              ),
              SizedBox(height: 15),
              BotaoMenuWidget(
                onPressed: () {
                  context.goNamed('GestaoGlossario');
                },
                txt: 'Cadastrar sinal no glossário',
                tam: 360,
                iconInicio: CupertinoIcons.book_solid,
              ),
            ],
          ),
        ),
      ),
    );
  }
}