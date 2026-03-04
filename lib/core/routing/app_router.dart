import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../features/game/presentation/screens/game_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const GameScreen();
      },
    ),
  ],
);