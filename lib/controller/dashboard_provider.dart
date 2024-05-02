import 'package:get/get.dart';

class DashboardProvider extends GetxController {
  int _selectedItemPosition = 0;
  int get selectedItemPosition => _selectedItemPosition;
  void changeSelectedItemPosition(int index) {
    _selectedItemPosition = index;
    update();
  }
}