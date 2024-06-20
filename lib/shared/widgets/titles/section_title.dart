import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(
      {super.key, required this.title, this.action, this.onPressed});

  final String title; // title as input
  final String? action; //action represents the text inside text button
  final VoidCallback?
      onPressed; // Void call back is the action performed when user clicks the button

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final coloScheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Title
        Text(
          title,
          style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
        ),

        // See All button
        if (action != null)
          TextButton(
            onPressed: () {},
            child: Text(
              action!,
              style: textTheme.bodyMedium!.copyWith(
                  decoration: TextDecoration.underline,
                  color: coloScheme.secondary),
            ),
          ),
      ],
    );
  }
}
