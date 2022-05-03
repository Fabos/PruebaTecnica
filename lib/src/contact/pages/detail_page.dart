// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prueba_tecnica/src/contact/models/contact_model.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key}) : super(key: key);

  Result data = Result();
  final style = const TextStyle(fontSize: 17);
  @override
  Widget build(BuildContext context) {
    data = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Page"),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Get.height * 0.1),
              _imagePerfil(),
              SizedBox(height: Get.height * 0.06),
              const Text(
                "Perfil",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Container(
                padding: EdgeInsets.only(bottom: Get.height * 0.1),
                child: Column(
                  children: [
                    _infoTarjeta1(),
                    SizedBox(height: Get.height * 0.02),
                    _infoTarjeta2(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Hero _imagePerfil() {
    return Hero(
      tag: data.phone!,
      child: Container(
        width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(data.picture!.large!),
          ),
        ),
      ),
    );
  }

  Container _infoTarjeta1() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
            blurRadius: 4.0,
          ),
        ],
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: Get.height * 0.03),
      margin: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
      child: Container(
        margin: EdgeInsets.only(left: Get.width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nombre: ${data.name!.first!} ${data.name!.last!}",
              style: style,
            ),
            const SizedBox(height: 5),
            Text(
              "Genero: ${data.gender}",
              style: style,
            ),
            const SizedBox(height: 5),
            Text(
              "Email: ${data.email}",
              style: style,
            ),
            const SizedBox(height: 5),
            Text(
              "Telefono: ${data.phone}",
              style: style,
            ),
            const SizedBox(height: 5),
            Text(
              "Celular: ${data.cell}",
              style: style,
            ),
          ],
        ),
      ),
    );
  }

  Container _infoTarjeta2() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
            blurRadius: 4.0,
          ),
        ],
      ),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
      child: Container(
        margin: EdgeInsets.only(left: Get.width * 0.05),
        padding: EdgeInsets.symmetric(vertical: Get.height * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ciudad: ${data.location!.city!}",
              style: style,
            ),
            const SizedBox(height: 5),
            Text(
              "Estado: ${data.location!.state}",
              style: style,
            ),
            const SizedBox(height: 5),
            Text(
              "País: ${data.location!.country!}",
              style: style,
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
