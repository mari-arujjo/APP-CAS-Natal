import 'package:app_cas_natal/assets/color/cores.dart';
import 'package:app_cas_natal/widgets/botoes/bt_laranja_modulo.dart';
import 'package:app_cas_natal/widgets/vizualizacao/progess_bar_widget.dart';
import 'package:flutter/material.dart';

class CardModulo3Widget extends StatefulWidget {
  final VoidCallback onPressed;
  const CardModulo3Widget({super.key, required this.onPressed});

  @override
  State<CardModulo3Widget> createState() => _CardModulo3WidgetState();
}

class _CardModulo3WidgetState extends State<CardModulo3Widget> {
  final cores = Cores();
  double progresso = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: 170,
          width: constraints.maxWidth, // pega a largura disponível do grid
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: cores.azulClaro,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'lib/assets/images/modulos/letramento.png',
                      width:
                          constraints.maxWidth * 0.40, // proporcional à largura
                      height: 85,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Letramento \n',
                          style: TextStyle(
                            fontSize: 20,
                            color: cores.preto,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          '${(progresso * 100).toStringAsFixed(0)}% concluído',
                          style: TextStyle(fontSize: 12, color: cores.preto),
                        ),
                        ProgressBarWidget(progress: progresso),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              BotaoLaranjaModuloWidget(
                txt: 'Iniciar módulo',
                onPressed: widget.onPressed,
              ),
            ],
          ),
        );
      },
    );
  }
}
