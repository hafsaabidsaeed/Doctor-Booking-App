import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentPreviewCard extends StatelessWidget {
  const AppointmentPreviewCard({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final coloScheme = Theme.of(context).colorScheme;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  coloScheme.primary,
                  coloScheme.tertiary,
                ],
            ),
          ),
          child:  Column(
            children: [
              SizedBox(
                height:100,
                width: 300,
                child: Text('No appointments yet',
                style:textTheme.bodyMedium!.copyWith(
                  color:  Colors.white,
                  fontWeight: FontWeight.bold,
                ) ,
                ),
              )
            ],
          ),
        ),

        Container(
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
              color: coloScheme.primary.withOpacity(0.25),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(8))


            ),
          ),


      ],
    );
  }
}
