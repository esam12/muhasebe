import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhasebe/core/constant/constant.dart';
import 'package:muhasebe/core/constant/routes.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    // SettingsControllerImp controllerImp = Get.put(SettingsControllerImp());
    return Container(
      child: ListView(
        children: [
          Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(height: Get.width / 3, color: AppColor.primaryColor),
                Positioned(
                  top: Get.width / 3.9,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[100],
                      backgroundImage:
                          const AssetImage("assets/images/avatar.png"),
                    ),
                  ),
                ),
              ]),
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    onTap: () {
                      //   Get.toNamed(AppRoute.pendingOrders);
                    },
                    title: const Text("Urunler"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      // Get.toNamed(AppRoute.archiveOrders);
                      Get.toNamed(AppRoute.yenihareket);
                    },
                    title: const Text("Arsiv Hareketler"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text("About Us"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text("Contact Us"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
