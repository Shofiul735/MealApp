import 'package:flutter/material.dart';

import '../dummy_data.dart';
import './single_category.dart';

class CategoryWidget extends StatelessWidget {
  final data = DUMMY_CATEGORIES;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, // width of very item
        childAspectRatio: 1.5, //height with respect to width
        mainAxisSpacing: 20, // distance from top item
        crossAxisSpacing: 20, // distance from side item
      ),
      itemBuilder: (bCtx, index) {
        return SingleCategory(data[index].title, data[index].color);
      },
      itemCount: data.length,
    );
  }
}
