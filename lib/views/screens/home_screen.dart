import 'package:flutter/material.dart';
import 'package:rjc_codelab_1/repositories/category_repo.dart';

import '../../constant/colors.dart';
import '../../repositories/mount_repo.dart';
import '../widgets/app_category_list.dart';
import '../widgets/app_header.dart';
import '../widgets/app_mount_listview.dart';
import '../widgets/app_search.dart';

class MountsApp extends StatelessWidget {
  MountsApp({Key? key}) : super(key: key);

  final MountRepo _mountRepo = MountRepo();
  final CategoryRepo _categoryRepo = CategoryRepo();

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
          Expanded(
            child: AppMountListView(
              items: _mountRepo,
            ),
          ),
          AppCategoryList(
            items: _categoryRepo,
          ),
        ],
      ),
    );
  }
}
