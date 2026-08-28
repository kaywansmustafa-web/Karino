import 'package:flutter/material.dart';

import '../../core/theme/karino_colors.dart';
import '../../core/theme/karino_spacing.dart';

class KarinoLoading extends StatelessWidget {
  const KarinoLoading({
    super.key,
    this.label,
  });

  final String? label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(KarinoSpacing.xl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              width: 28,
              height: 28,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                color: KarinoColors.primary,
              ),
            ),
            if (label != null) ...[
              const SizedBox(height: KarinoSpacing.md),
              Text(
                label!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: KarinoColors.textSecondary,
                    ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}