import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../repositories/details_rating_bar_repo.dart';

class DetailsRatingBar extends StatelessWidget {
  const DetailsRatingBar({Key? key}) : super(key: key);

  final data = DetailsRatingBarRepo.sampleRatingData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(data.entries.length, (index) {
          return Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.2),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  data.entries.elementAt(index).key,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  data.entries.elementAt(index).value,
                  style: const TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
