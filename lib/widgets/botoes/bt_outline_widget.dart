import 'package:app_cas_natal/assets/cores.dart';
import 'package:flutter/material.dart';

class BotaoOutlineWidget extends StatefulWidget {
  final String txt;
  final VoidCallback onPressed;
  final double tam;
  final IconData iconInicio;
  const BotaoOutlineWidget({
    super.key,
    required this.onPressed,
    required this.txt,
    required this.tam,
    required this.iconInicio,
  });

  @override
  State<BotaoOutlineWidget> createState() => _BotaoOutlineWidgetState();
}

class _BotaoOutlineWidgetState extends State<BotaoOutlineWidget> {
  final cores = Cores();
  bool pressionado = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: widget.tam,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          overlayColor: WidgetStatePropertyAll(cores.cinzaClaro),
        ),
        onPressed: widget.onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: cores.laranja,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(widget.iconInicio, size: 20, color: cores.preto),
                ),
                SizedBox(width: 10),
                Text(
                  widget.txt,
                  style: TextStyle(color: cores.preto, fontSize: 16),
                ),
              ],
            ),

            Icon(Icons.arrow_forward_ios, size: 20, color: cores.preto),
          ],
        ),
      ),
    );
  }
}
