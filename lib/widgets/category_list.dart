import 'package:flutter/material.dart';
import 'category_card.dart';

class CategoryList extends StatelessWidget {
  final List<Map<String, String>> categories;

  CategoryList({required this.categories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            title: categories[index]['title']!,
            imageUrl: categories[index]['image']!,
          );
        },
      ),
    );
  }
}
