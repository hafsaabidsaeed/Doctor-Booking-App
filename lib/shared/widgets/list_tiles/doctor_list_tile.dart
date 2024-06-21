import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class DoctorListTile extends StatelessWidget {
  const DoctorListTile({super.key,
  required this.doctor,
  });

  final Doctor doctor;
  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      onTap: () {},
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius:  30,
        backgroundColor: colorScheme.background,
        backgroundImage: NetworkImage(doctor.profileImageUrl),
      ),
      title:  Text(
        doctor.name,
        style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 4,),
          Text(doctor.category.name,
          style: textTheme.bodyMedium,
          ),
          Row(
            children: [
              Icon(Icons.star, color: const Color.fromRGBO(255, 204, 128,1), size: 16,),
              const SizedBox(width: 4,),
              Text(
                doctor.rating.toString(),
                style: textTheme.bodySmall!.copyWith(
                  color: colorScheme.onBackground.withOpacity(0.5),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width:  16,),
              Icon(Icons.work, color: colorScheme.tertiary, size: 16,),
              const SizedBox(width: 4,),
              Text(
                '3 Years',
                style:  textTheme.bodySmall!.copyWith(
                  color: colorScheme.onBackground.withOpacity(0.5),
                  fontWeight:  FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ) ,
      trailing: FilledButton(onPressed: () {}, child: const Text('Book Now'),),
    );

  }
}
