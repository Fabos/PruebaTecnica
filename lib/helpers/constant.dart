import 'package:get/get.dart';

// EMULADOR
getUrlServer() {
  String url = (GetPlatform.isAndroid)
      ? "https://randomuser.me"
      : "https://randomuser.me";

  return url;
}

// DEVICE FISICO
// getUrlServer() {
//   String url = (GetPlatform.isAndroid)
//       ? "http://192.168.20.20:8000"
//       : "http://192.168.20.20:8000";

//   return url;
// }

// PRODU
// getUrlServer() {
//   String url = (GetPlatform.isAndroid)
//       ? "http://dominio.co:8000"
//       : "http://dominio.co:8000";

//   return url;
// }
