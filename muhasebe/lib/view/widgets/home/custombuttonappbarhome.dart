import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhasebe/controller/homescreen_controller.dart';
import 'package:muhasebe/view/widgets/home/custombuttonappbar.dart';

class CustomButtonAppBarHome extends GetView<HomeScreenControllerImp> {
  const CustomButtonAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 2,
        child: Row(
          children: [
            ...List.generate(
              controller.listPage.length + 1,
              ((index) {
                int i = index > 2 ? index - 1 : index;
                return index == 2
                    ? const Spacer()
                    : CustomButtonOnAppBar(
                        onPressed: () {
                          controller.changePage(i);
                        },
                        // textButton: controller.bottomappbar[i]['title'],
                        iconData: controller.bottomappbar[i]['icon'],
                        active: controller.currentpage == i ? true : false,
                      );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
