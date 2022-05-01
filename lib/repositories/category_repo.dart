import 'package:flutter/material.dart';
import 'package:rjc_codelab_1/models/category_model.dart';

class CategoryRepo {
  final List<CategoryModel> categories = [
    CategoryModel(category: 'Mountain', icon: Icons.terrain),
    CategoryModel(category: 'Forest', icon: Icons.park),
    CategoryModel(category: 'Beach', icon: Icons.beach_access),
    CategoryModel(category: 'Hiking', icon: Icons.directions_walk),
    CategoryModel(category: 'Camping', icon: Icons.cabin),
    CategoryModel(category: 'Explore', icon: Icons.explore),
  ];
}
