import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhasebe/controller/homescreen_controller.dart';
import 'package:muhasebe/core/constant/constant.dart';
import 'package:muhasebe/core/constant/routes.dart';
import 'package:muhasebe/view/widgets/home/custombuttonappbarhome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: ((controller) => Scaffold(
            floatingActionButton: FloatingActionButton(
              backgroundColor: AppColor.primaryColor,
              onPressed: () {
                 Get.toNamed(AppRoute.newCustomer);
              },
              child: const Icon(Icons.add),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: const CustomButtonAppBarHome(),
            body: WillPopScope(
              child: controller.listPage.elementAt(controller.currentpage),
              onWillPop: () {
                Get.defaultDialog(
                  title: "Warring",
                  titleStyle: const TextStyle(
                      fontWeight: FontWeight.bold, color: AppColor.secondColor),
                  middleText: "Do You Want To Exit The App ?",
                  onCancel: () {},
                  cancelTextColor: AppColor.secondColor,
                  confirmTextColor: AppColor.secondColor,
                  buttonColor: AppColor.fourthColor,
                  onConfirm: () {
                    exit(0);
                  },
                );
                return Future.value(false);
              },
            ),
          )),
    );
  }
}
