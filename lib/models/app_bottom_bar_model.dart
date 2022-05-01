import 'package:flutter/material.dart';

class AppBottomBarModel {
  IconData? icon;
  bool isSelected;
  String label;

  AppBottomBarModel({
    this.icon,
    this.isSelected = false,
    this.label = '',
  });
}
