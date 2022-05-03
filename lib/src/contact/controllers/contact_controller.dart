import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba_tecnica/src/contact/models/contact_model.dart';
import 'package:prueba_tecnica/src/contact/services/contact_service.dart';

class ContactController extends GetxController {
  final serviceContact = ContactService();
  List<Result> listContacts = <Result>[].obs;
  var bandera = false.obs;

  final ScrollController scrollController = ScrollController();

  @override
  void onInit() async {
    double? maxScrollTemp;

    scrollController.addListener(() async {
      double positionScroll = scrollController.position.pixels;
      double maxScroll = scrollController.position.maxScrollExtent;
      if (positionScroll >= maxScroll - 600) {
        if (maxScrollTemp == maxScroll) {
          return;
        } else {
          maxScrollTemp = maxScroll;
          if (!bandera.value) {
            bandera.value = true;
            await loadContact();
          }
          bandera.value = false;
        }
      }
    });
    await loadContact();
    super.onInit();
  }

  Future loadContact() async {
    var contacts = await serviceContact.getContact(100);
    if (contacts != null) {
      for (var item in contacts.results) {
        listContacts.add(item);
      }
    }
  }
}
