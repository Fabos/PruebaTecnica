import 'dart:async';
import 'package:dio/dio.dart';
import 'package:prueba_tecnica/helpers/conexion_red.dart';
import 'package:prueba_tecnica/helpers/constant.dart';
import 'package:prueba_tecnica/src/contact/models/contact_model.dart';

class ContactService {
  //CREAR SINGLETON
  ContactService._privateConstructor();
  static final ContactService _instance = ContactService._privateConstructor();

  factory ContactService() {
    return _instance;
  }

  // Global options

  final _dio = Dio();

  Future<dynamic> getContact(int count) async {
    final internet = await getConexion();
    if (internet) {
      final String baseUrl = '${getUrlServer()}/api/?results=$count';

      //Petición http
      try {
        final resp = await _dio.get(baseUrl);

        //GUARDAR PREFERENCIAS API
        ContactModel contactos = ContactModel.fromMap(resp.data);

        return contactos;
      } catch (_) {
        return null;
      }
    } else {
      return null;
    }
  }
}
