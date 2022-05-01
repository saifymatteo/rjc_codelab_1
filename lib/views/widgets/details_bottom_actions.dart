import 'package:flutter/material.dart';

import '../../constant/colors.dart';

class DetailsBottomActions extends StatelessWidget {
  const DetailsBottomActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Row(
        children: [
          Expanded(
            child: Material(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.mainColor,
              child: InkWell(
                highlightColor: Colors.white.withOpacity(0.2),
                splashColor: Colors.white.withOpacity(0.2),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(21),
                  child: const Text(
                    'Book Now',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              border: Border.all(color: AppColors.mainColor, width: 2),
            ),
            child: const Icon(
              Icons.turned_in_not,
              color: AppColors.mainColor,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}