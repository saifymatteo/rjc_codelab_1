import 'package:flutter/material.dart';
import 'package:rjc_codelab_1/constant/colors.dart';
import 'package:rjc_codelab_1/models/category_model.dart';
import 'package:rjc_codelab_1/repositories/category_repo.dart';

class AppCategoryList extends StatelessWidget {
  AppCategoryList({Key? key}) : super(key: key);

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See More',
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.only(left: 10),
            child: Scrollbar(
              controller: _controller,
              child: ListView.builder(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemCount: CategoryRepo.categories.length,
                itemBuilder: (_, index) {
                  CategoryModel currentCategory = CategoryRepo.categories[index];

                  return Container(
                    width: 100,
                    margin: const EdgeInsets.only(top: 10, right: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.2),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(currentCategory.icon, color: AppColors.mainColor),
                        Text(
                          currentCategory.category,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
