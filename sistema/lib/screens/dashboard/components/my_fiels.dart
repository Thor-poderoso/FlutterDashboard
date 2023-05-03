import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyFiels extends StatelessWidget {
  const MyFiels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("My Files", 
            style: Theme.of(context).textTheme.titleMedium,
              ),
              ElevatedButton.icon(
                style: TextButton.styleFrom(padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5, 
                  vertical: defaultPadding),
                ),
                onPressed: () {}, 
                icon: const Icon(Icons.add), 
                label: const Text("Add New"),
              ),
            ],
          ),
           const SizedBox(height: defaultPadding,)  ,
              GridView.builder(
                shrinkWrap: true,
                itemCount: demoMyFiels.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, 
                  crossAxisSpacing: defaultPadding), 
              itemBuilder: (context, index) => Container(
                decoration: const BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)
              ),
            ),
          ),
        ),
      ],
    );
  }
}
