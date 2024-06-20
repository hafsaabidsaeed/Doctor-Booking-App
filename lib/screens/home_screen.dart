import 'package:flutter/material.dart';

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
            SizedBox(
              height: 4,
            ),
            Text(
              'Massimo D',
              style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
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
                  style: textTheme.bodySmall!.copyWith(color: colorScheme.secondary),
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
            icon: const Icon (Icons.notifications_outlined),
          ),
        const SizedBox(width: 8,),
        ],

        //Search bar
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child:  Padding(
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search for a doctor . . .',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Container(
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.all(8),
                    decoration:  BoxDecoration(
                      color:  colorScheme.onSurfaceVariant,
                    ),
                    child: Icon(Icons.filter_alt_outlined))
              ),
            ),
          ),
        ),
      ),
    );
  }
}
