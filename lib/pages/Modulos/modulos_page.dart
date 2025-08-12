import 'package:app_cas_natal/widgets/modulos/modulo1_card_widget.dart';
import 'package:app_cas_natal/widgets/modulos/modulo2_card_widget.dart';
import 'package:app_cas_natal/widgets/modulos/modulo3_card_widget.dart';
import 'package:app_cas_natal/widgets/modulos/modulo4_card_widget.dart';
import 'package:flutter/material.dart';

class ModulosPage extends StatefulWidget {
  const ModulosPage({super.key});

  @override
  State<ModulosPage> createState() => _ModulosPageState();
}

class _ModulosPageState extends State<ModulosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Módulos')),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total: 04'),
                SizedBox(height: 5),
                CardModulo1Widget(onPressed: () {}),
                SizedBox(height: 15),
                CardModulo2Widget(onPressed: () {}),
                SizedBox(height: 15),
                CardModulo3Widget(onPressed: () {}),
                SizedBox(height: 15),
                CardModulo4Widget(onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
