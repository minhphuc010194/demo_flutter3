import 'package:get/get.dart';

class ChangeTabController extends GetxController {
  int tabIndexScreen = 0;
  // @override
  // void onInit() {
  //
  //   super.onInit();
  // }

  // @override
  // void onClose() {
  //
  //   super.onClose();
  // }

  void setTab(index) {
    tabIndexScreen = index;
    update();
  }
}
