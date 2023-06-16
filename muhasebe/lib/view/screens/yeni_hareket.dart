import 'package:flutter/material.dart';
import 'package:muhasebe/view/widgets/yeni_hareket/customtextfield.dart';

class YeniHareket extends StatelessWidget {
  const YeniHareket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Yeni Hareket',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              children: [
                CustomTextFieldYeniHareket(
                  hinttext: 'hareket turu',
                  labeltext: 'Hareket Turu',
                  mycontroller: TextEditingController(),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFieldYeniHareket(
                  hinttext: 'musteri adi',
                  labeltext: 'Musteri Adi',
                  mycontroller: TextEditingController(),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFieldYeniHareket(
                  hinttext: 'urun adi',
                  labeltext: 'Urun Adi',
                  mycontroller: TextEditingController(),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFieldYeniHareket(
                  hinttext: 'urun miktari',
                  labeltext: 'Urun Miktari',
                  mycontroller: TextEditingController(),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFieldYeniHareket(
                  hinttext: 'urun fiyati',
                  labeltext: 'Urun Fiyati',
                  mycontroller: TextEditingController(),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFieldYeniHareket(
                  hinttext: 'hareket aciklamasi',
                  labeltext: 'Hareket Aciklamasi',
                  mycontroller: TextEditingController(),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFieldYeniHareket(
                  hinttext: 'hareket tarihi',
                  labeltext: 'Hareket Tarihi',
                  mycontroller: TextEditingController(),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFieldYeniHareket(
                  hinttext: 'hareket miktari',
                  labeltext: 'Hareket Miktari',
                  mycontroller: TextEditingController(),
                ),
                Row(
                  children: [
                    Container(
                      width: 190,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: const Center(
                        child: Text("Hareket Ekle"),
                      ),
                    ),
                    Container(
                      width: 190,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: const Center(
                        child: Text("Ihracat Hareketi"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
