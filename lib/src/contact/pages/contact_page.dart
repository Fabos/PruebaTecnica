import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba_tecnica/src/contact/controllers/contact_controller.dart';

class ContactPage extends StatelessWidget {
  ContactPage({Key? key}) : super(key: key);
  final ctrlContact = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Users"),
        centerTitle: true,
      ),
      body: Obx(
        () => SizedBox(
          height: Get.height,
          width: double.infinity,
          child: ListView.builder(
            controller: ctrlContact.scrollController,
            itemCount: ctrlContact.listContacts.length,
            itemBuilder: (_, index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/detail',
                          arguments: ctrlContact.listContacts[index]);
                    },
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Hero(
                            tag: ctrlContact.listContacts[index].phone!,
                            child: Image.network(
                              ctrlContact
                                  .listContacts[index].picture!.thumbnail!,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 2,
                            child: Text(
                              ctrlContact.listContacts[index].name!.title!,
                            ),
                          ),
                          Expanded(
                              flex: 6,
                              child: Text(
                                  "${ctrlContact.listContacts[index].name!.first!} ${ctrlContact.listContacts[index].name!.last!}")),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
