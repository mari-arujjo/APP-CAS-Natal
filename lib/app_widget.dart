import 'package:app_cas_natal/assets/cores.dart';
import 'package:app_cas_natal/rotas.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final cores = Cores();

    return MaterialApp.router(
      title: 'CAS Natal + IFRN',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          foregroundColor: cores.preto,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: cores.preto,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
      ),

      routerConfig: AppNavigation.rotas,
    );
  }
}
