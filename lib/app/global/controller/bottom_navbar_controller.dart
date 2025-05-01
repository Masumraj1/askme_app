import 'package:get/get.dart';

class BottomNavbarController extends GetxController {
  // Rx is a reactive type that allows the state to be updated reactively
  var selectedIndex = 0.obs; // 0 is the default selected index

  // Function to change the selected index
  void changeTab(int index) {
    selectedIndex.value = index;
  }
}
