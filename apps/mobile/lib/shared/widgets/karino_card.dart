import 'package:flutter/material.dart';

import '../../core/theme/karino_colors.dart';
import '../../core/theme/karino_radius.dart';
import '../../core/theme/karino_spacing.dart';

class KarinoCard extends StatelessWidget {
  const KarinoCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(KarinoSpacing.md),
    this.onTap,
    this.backgroundColor,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final content = Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? KarinoColors.surface,
        borderRadius: BorderRadius.circular(KarinoRadius.lg),
      ),
      child: child,
    );

    if (onTap == null) {
      return content;
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(KarinoRadius.lg),
        child: content,
      ),
    );
  }
}