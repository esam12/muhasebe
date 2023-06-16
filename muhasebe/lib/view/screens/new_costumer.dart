import 'package:flutter/material.dart';
import 'package:muhasebe/view/widgets/new_costumer/textfiled.dart';

class NewCostumer extends StatelessWidget {
  const NewCostumer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'New Customer',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/starts.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
             const SizedBox(height: 20),
              CustomTextField(
                icon: Icons.person_add,
                hinttext: 'new customer',
                labeltext: 'New Customer',
                mycontroller: TextEditingController(),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                icon: Icons.person_search_sharp,
                hinttext: 'customer type',
                labeltext: 'Customer Type',
                mycontroller: TextEditingController(),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                icon: Icons.phone,
                hinttext: 'phone number',
                labeltext: 'phone Number',
                mycontroller: TextEditingController(),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                icon: Icons.email,
                hinttext: 'e-post',
                labeltext: 'E-Posta',
                mycontroller: TextEditingController(),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                icon: Icons.phone,
                hinttext: 'address',
                labeltext: 'Address',
                mycontroller: TextEditingController(),
              ),
              const SizedBox(height: 40),
              Container(
                width: 190,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.blue),
                ),
                child: const Center(
                  child: Text("Add Customer"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}