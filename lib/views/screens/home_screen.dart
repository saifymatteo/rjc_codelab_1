import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../widgets/widgets.dart';

class MountsApp extends StatelessWidget {
  const MountsApp({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: AppColors.mainColor),
        title: const Center(
          child: Icon(
            Icons.terrain,
            color: AppColors.mainColor,
            size: 40,
          ),
        ),
        actions: const [SizedBox(width: 40, height: 40)],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(30),
          color: AppColors.mainColor,
          alignment: Alignment.bottomLeft,
          child: const Icon(Icons.terrain, color: Colors.white, size: 80),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppHeader(),
          const AppSearch(),
          Expanded(child: AppMountListView()),
          AppCategoryList(),
          const AppBottomBar(),
        ],
      ),
    );
  }
}
