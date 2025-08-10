import 'package:app_cas_natal/nav.dart';
import 'package:app_cas_natal/pages/Glossario/glossario_page.dart';
import 'package:app_cas_natal/pages/Inicio/config_page.dart';
import 'package:app_cas_natal/pages/Inicio/editar_perfil_page.dart';
import 'package:app_cas_natal/pages/Inicio/inicio_page.dart';
import 'package:app_cas_natal/pages/Inicio/preferencias_page.dart';
import 'package:app_cas_natal/pages/Inicio/senha_page.dart';
import 'package:app_cas_natal/pages/Modulos/modulos_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigation {
  AppNavigation._();
  static String initR = '/inicio';

  /// KEYS DE NAVEGAÇÃO
  /// navegação global raiz do app, serve para navegar em telas fora da estrutura do shell, como:
  /// tela de login, splash screen e pags que nao fazem parte da navegação por abas
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  /// navegadores independentes, usados por cada StatefulShellBranch.
  /// mantém pilhas de navegação separadas
  static final _rootNavigatorInicio = GlobalKey<NavigatorState>(
    debugLabel: 'shellInicio',
  );
  static final _rootNavigatorGlossario = GlobalKey<NavigatorState>(
    debugLabel: 'shellGlossario',
  );
  static final _rootNavigatorModulos = GlobalKey<NavigatorState>(
    debugLabel: 'shellModulos',
  );

  static final GoRouter rotas = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: initR,
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return NavigationBarWidget(navigationShell: navigationShell);
        },

        branches: <StatefulShellBranch>[
          ////////////// BRANCH -> INICIO
          StatefulShellBranch(
            navigatorKey: _rootNavigatorInicio,
            routes: [
              GoRoute(
                path: '/inicio',
                name: 'Inicio',
                builder: (context, state) {
                  return InicioPage(key: state.pageKey);
                },
                routes: [
                  GoRoute(
                    path: '/configuracoes',
                    name: 'Configuracoes',
                    builder: (context, state) {
                      return ConfiguracoesPage(key: state.pageKey);
                    },
                    routes: [
                      GoRoute(
                        path: '/editarPerfil',
                        name: 'EditarPerfil',
                        builder: (context, state) {
                          return EditarPerfilPage(key: state.pageKey);
                        },
                      ),
                      GoRoute(
                        path: '/preferencias',
                        name: 'Preferencias',
                        builder: (context, state) {
                          return PreferenciasPage(key: state.pageKey);
                        },
                      ),
                      GoRoute(
                        path: '/redefinirSenha',
                        name: 'RedefinirSenha',
                        builder: (context, state) {
                          return RedefinirSenhaPage(key: state.pageKey);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          ////////////// BRANCH -> MODULOS
          StatefulShellBranch(
            navigatorKey: _rootNavigatorModulos,
            routes: [
              GoRoute(
                path: '/modulos',
                name: 'Modulos',
                builder: (context, state) {
                  return ModulosPage(key: state.pageKey);
                },
              ),
            ],
          ),

          ////////////// BRANCH -> MODULOS
          StatefulShellBranch(
            navigatorKey: _rootNavigatorGlossario,
            routes: [
              GoRoute(
                path: '/glossario',
                name: 'Glossario',
                builder: (context, state) {
                  return GlossarioPage(key: state.pageKey);
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
