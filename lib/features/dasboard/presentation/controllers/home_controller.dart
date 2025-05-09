import 'package:get/get.dart';

class HomeController extends GetxController {
  var isHoveredContact = false.obs;
  var isVisibleMobileNav = false.obs;
  var isShowAllProjects = false.obs;

  void setHovered(bool value) {
    isHoveredContact.value = value;
  }

  void setVisibility() {
    isVisibleMobileNav.value = !isVisibleMobileNav.value;
  }

  void showAllProjects() {
    isShowAllProjects.value = !isShowAllProjects.value;
  }
}
