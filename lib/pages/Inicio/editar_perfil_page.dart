import 'package:app_cas_natal/widgets/container/container_widget.dart';
import 'package:app_cas_natal/widgets/vizualizacao/foto.dart';
import 'package:flutter/material.dart';

class EditarPerfilPage extends StatefulWidget {
  const EditarPerfilPage({super.key});

  @override
  State<EditarPerfilPage> createState() => _EditarPerfilPageState();
}

class _EditarPerfilPageState extends State<EditarPerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('@mari.arujjo')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              FotoWidget(tam: 60),
              SizedBox(height: 20),
              ContainerWidget(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('affffff veyyyyyaaaaaaaaaaaaaaaaa')],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
