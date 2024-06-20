import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleAvatarWithTextLabel extends StatelessWidget {
  const CircleAvatarWithTextLabel({
    super.key,
    required this.icon,
    required this.label,
    this.onTap
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: colorScheme.primary,
            foregroundColor: colorScheme.onPrimary,
            child: Icon(icon),
          ),
          const SizedBox(height: 8.0,),
          Text(
            label,
            maxLines: 1,
            // Handling Text Overflow: if the text is too long then it will be replaced by dots from the end
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
