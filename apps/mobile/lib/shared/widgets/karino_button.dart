import 'package:flutter/material.dart';

import '../../core/theme/karino_colors.dart';
import '../../core/theme/karino_radius.dart';

enum KarinoButtonVariant {
  primary,
  secondary,
  text,
  destructive,
}

class KarinoButton extends StatelessWidget {
  const KarinoButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = KarinoButtonVariant.primary,
    this.isLoading = false,
    this.isExpanded = true,
    this.icon,
  });

  final String label;
  final VoidCallback? onPressed;
  final KarinoButtonVariant variant;
  final bool isLoading;
  final bool isExpanded;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final button = _buildButton(context);

    if (!isExpanded) {
      return button;
    }

    return SizedBox(
      width: double.infinity,
      child: button,
    );
  }

  Widget _buildButton(BuildContext context) {
    final child = isLoading
        ? const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                Icon(icon, size: 18),
                const SizedBox(width: 8),
              ],
              Text(label),
            ],
          );

    switch (variant) {
      case KarinoButtonVariant.primary:
        return FilledButton(
          onPressed: isLoading ? null : onPressed,
          style: FilledButton.styleFrom(
            backgroundColor: KarinoColors.primary,
            foregroundColor: Colors.white,
            minimumSize: const Size(0, 52),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(KarinoRadius.md),
            ),
          ),
          child: child,
        );

      case KarinoButtonVariant.secondary:
        return OutlinedButton(
          onPressed: isLoading ? null : onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: KarinoColors.textPrimary,
            minimumSize: const Size(0, 52),
            side: const BorderSide(
              color: KarinoColors.border,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(KarinoRadius.md),
            ),
          ),
          child: child,
        );

      case KarinoButtonVariant.text:
        return TextButton(
          onPressed: isLoading ? null : onPressed,
          child: child,
        );

      case KarinoButtonVariant.destructive:
        return FilledButton(
          onPressed: isLoading ? null : onPressed,
          style: FilledButton.styleFrom(
            backgroundColor: KarinoColors.error,
            foregroundColor: Colors.white,
            minimumSize: const Size(0, 52),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(KarinoRadius.md),
            ),
          ),
          child: child,
        );
    }
  }
}