import 'package:flutter/material.dart';
import 'package:rjc_codelab_1/constant/colors.dart';
import 'package:rjc_codelab_1/models/app_bottom_bar_model.dart';
import 'package:rjc_codelab_1/repositories/app_bottom_bar_repo.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  AppBottomBarState createState() => AppBottomBarState();
}

class AppBottomBarState extends State<AppBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset.zero,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          AppBottomBarRepo.barItems.length,
          (index) {
            AppBottomBarModel currentBarItems = AppBottomBarRepo.barItems[index];

            Widget barItemWidget;

            if (currentBarItems.isSelected) {
              barItemWidget = Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.mainColor,
                ),
                child: Row(
                  children: [
                    Icon(currentBarItems.icon, color: Colors.white),
                    const SizedBox(width: 5),
                    Text(
                      currentBarItems.label,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              );
            } else {
              barItemWidget = IconButton(
                onPressed: () {
                  setState(() {
                    for (var item in AppBottomBarRepo.barItems) {
                      item.isSelected = item == currentBarItems;
                    }
                  });
                },
                icon: Icon(currentBarItems.icon),
              );
            }

            return barItemWidget;
          },
        ),
      ),
    );
  }
}
