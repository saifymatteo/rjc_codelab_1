import 'package:flutter/material.dart';
import 'package:rjc_codelab_1/views/screens/details_page.dart';

import '../../models/mount_model.dart';
import '../../repositories/mount_repo.dart';

class AppMountListView extends StatelessWidget {
  AppMountListView({Key? key}) : super(key: key);

  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Scrollbar(
        controller: controller,
        child: ListView.builder(
          controller: controller,
          scrollDirection: Axis.horizontal,
          itemCount: MountRepo.mountItems.length,
          itemBuilder: (_, index) {
            MountModel currentMount = MountRepo.mountItems[index];

            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => DetailsPage(mount: currentMount),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(10),
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(currentMount.path),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentMount.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      currentMount.location,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
