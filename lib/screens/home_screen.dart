import 'package:doctor_app/shared/widgets/avatars/circle_avatar_with_text_label.dart';
import 'package:doctor_app/shared/widgets/cards/appointment_preview_card.dart';
import 'package:doctor_app/shared/widgets/titles/section_title.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //create a bloc and provide it to the HomeView
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Here we will create the HomeView UI

    //color and text theme
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      //The AppBar is Divided into two parts for the user name and location
      appBar: AppBar(
        toolbarHeight: 80,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Massimo D',
              style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: colorScheme.secondary,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Dubai, UAE',
                  style: textTheme.bodySmall!
                      .copyWith(color: colorScheme.secondary),
                ),
                const SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.expand_more,
                  color: colorScheme.secondary,
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
          const SizedBox(
            width: 8,
          ),
        ],

        //Search bar
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Search for a doctor . . .',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: Container(
                      margin: const EdgeInsets.all(4),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: colorScheme.onSurfaceVariant,
                      ),
                      child: const Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.white,
                      ))),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            //We will Display all the doctors categories here
            _DoctorCategories(),
            SizedBox(height: 24,),
            _MySchedule(),
            SizedBox(height: 24,),
            _NearbyDoctors(),
          ],
        ),
      ),
    );
  }
}

//Doctor Categories section of the home screen
class _DoctorCategories extends StatelessWidget {
  const _DoctorCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Title
        SectionTitle(
          title: 'Categories',
          action: 'See all',
          onPressed: () {},
        ),

        //Icons and labels
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: DoctorCategory.values.take(5).map((category) =>
                Expanded(
                  child: CircleAvatarWithTextLabel(
                      icon: category.icon,
                      label: category.name
                  ),
                ),
            ).toList(),
        ),
      ],
    );
  }
}

//My schedule section of the home screen
class _MySchedule extends StatelessWidget {
  const _MySchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Title
        SectionTitle(
          title: 'My Schedule',
          action: 'See all',
          onPressed: () {},
        ),
        const AppointmentPreviewCard(),

      ],
    );
  }
}

class _NearbyDoctors extends StatelessWidget {
  const _NearbyDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Nearby Doctors',
          action: 'See all',
          onPressed: () {},
        ),
        
      ],
    );
  }
}
