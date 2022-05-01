import 'package:flutter/material.dart';

import '../models/app_bottom_bar_model.dart';

abstract class AppBottomBarRepo {
  static List<AppBottomBarModel> barItems = [
    AppBottomBarModel(icon: Icons.home, label: 'Home', isSelected: true),
    AppBottomBarModel(icon: Icons.explore, label: 'Explore', isSelected: false),
    AppBottomBarModel(icon: Icons.turned_in_not, label: 'Tag', isSelected: false),
    AppBottomBarModel(icon: Icons.person_outline,label: 'Profile', isSelected: false)
  ];
}
