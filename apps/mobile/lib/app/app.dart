import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router.dart';
import 'theme.dart';

class KarinoApp extends ConsumerWidget {
  const KarinoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Karino',
      debugShowCheckedModeBanner: false,
      theme: KarinoTheme.light,
      routerConfig: karinoRouter,
    );
  }
}