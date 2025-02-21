import 'package:get/get.dart';

class HomeController extends GetxController {
  var isHoveredContact = false.obs;

  void setHovered(bool value) {
    isHoveredContact.value = value;
  }
}
