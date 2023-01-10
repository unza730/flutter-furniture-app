import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:furnitureui/core/theme/app_color.dart';

class PopularFurnitureWidget extends StatefulWidget {
  const PopularFurnitureWidget({Key? key}) : super(key: key);

  @override
  State<PopularFurnitureWidget> createState() => _PopularFurnitureWidgetState();
}

class _PopularFurnitureWidgetState extends State<PopularFurnitureWidget> {
  final categories = [
    "All",
    "Sofa",
    "Chair",
    "Table",
    "Kitchen",
    "Bedroom",
    "Bathroom"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Most Popular",
                  style: Theme.of(context).textTheme.titleLarge),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: Colors.blue),
                  ))
            ],
          ),
        ),
        // ---------- List view on horizontal postion in circular form ----------
        SizedBox(
          height: 38,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(right: 24),
              itemCount: categories.length,
              itemBuilder: ((context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 24),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      color: index == 0 ? AppColor.black : AppColor.white,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(24)),
                  alignment: Alignment.center,
                  child: Text(
                    categories[index],
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: index == 0 ? AppColor.white : AppColor.black,
                        ),
                  ),
                );
              })),
        )

        // ---------- List view on horizontal postion in circular form ----------
      ],
    );
  }
}
