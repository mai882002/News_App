import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'images/business.jpg',
      categoryName: 'Business',
    ),
    CategoryModel(
      image: 'images/entertainment.jpg',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      image: 'images/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      image: 'images/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      image: 'images/technology.jpeg',
      categoryName: 'Technology',
    ),
    CategoryModel(
      image: 'images/sports.jpeg',
      categoryName: 'Sports',
    ),
    CategoryModel(
      image: 'images/general.jpeg',
      categoryName: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
