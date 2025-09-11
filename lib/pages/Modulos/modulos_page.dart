import 'package:app_cas_natal/widgets/modulos/historia_CAS_card_widget.dart';
import 'package:app_cas_natal/widgets/modulos/historia_cultura_card_widget.dart';
import 'package:app_cas_natal/widgets/modulos/letramento_card_widget.dart';
import 'package:app_cas_natal/widgets/modulos/direitos_deveres_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ModulosPage extends StatefulWidget {
  const ModulosPage({super.key});

  @override
  State<ModulosPage> createState() => _ModulosPageState();
}

class _ModulosPageState extends State<ModulosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 30),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              CardModuloHistoriaCASWidget(onPressed: () {}),
              SizedBox(height: 15),
              CardModuloHistoriaCulturaWidget(onPressed: () {context.goNamed('HistoriaECulturaSurda');}),
              SizedBox(height: 15),
              CardModuloLetramentoWidget(onPressed: () {}),
              SizedBox(height: 15),
              CardModuloDireitosDeveresWidget(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
