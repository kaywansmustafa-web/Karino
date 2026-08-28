import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter karinoRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const _KarinoFoundationScreen();
      },
    ),
  ],
);

class _KarinoFoundationScreen extends StatelessWidget {
  const _KarinoFoundationScreen();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Karino',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}