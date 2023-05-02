import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhasebe/controller/homepage_controller.dart';
import 'package:muhasebe/core/constant/constant.dart';
import 'package:muhasebe/view/widgets/home/customeappbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageControllerImp());
    return GetBuilder<HomePageControllerImp>(
      builder: (controller) => Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: ListView(children: [
          CustomAppBar(
            mycontroller: controller.search!,
            onChanged: (val) {
              //  controller.checkSearch(val);
            },
            titleappbar: "Search...",
            onPressedSearch: () {
              controller.onSearchItems();
            },
            onPressedFavorite: () {
              // Get.toNamed(AppRoute.myfavorite);
            },
          ),
          const CardForMusteri(),
        ]),
      ),
    );
  }
}

class CardForMusteri extends GetView<HomePageControllerImp> {
  const CardForMusteri({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              //  controller.goToPageProductDetails(listdataModel[index]);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 2),
              child: Card(
                color: AppColor.backgroundcolor,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: const [
                      Expanded(
                        child: ListTile(
                          title: Text(
                            "Musteri adi : Ahmed",
                          ),
                          subtitle: Text(
                            "Musteri tipi : Sofur / Borc: 1400tl",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
