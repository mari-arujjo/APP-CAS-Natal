import 'package:app_cas_natal/assets/cores.dart';
import 'package:flutter/material.dart';

class BotaoModuloWidget extends StatefulWidget {
  final VoidCallback onPressed;
  final double tam;
  const BotaoModuloWidget({
    super.key,
    required this.onPressed,
    required this.tam,
  });

  @override
  State<BotaoModuloWidget> createState() => _BotaoModuloWidgetState();
}

class _BotaoModuloWidgetState extends State<BotaoModuloWidget> {
  bool pressionado = false;
  final cores = Cores();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: widget.tam,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: cores.azulEscuro,
              offset: const Offset(0, 4),
              blurRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),

        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(cores.azulClaro),
            overlayColor: WidgetStatePropertyAll(cores.azulEscuro),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            shadowColor: WidgetStatePropertyAll(Colors.transparent),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 120,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'lib/assets/diversidade.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'História e Cultura\nSurda',
                style: TextStyle(fontSize: 18, color: cores.preto),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
