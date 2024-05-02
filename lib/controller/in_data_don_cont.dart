import 'package:get/get.dart';

class GetPageController extends GetxController {
  int page = 1;
  void addAllList({required int page}) {
    this.page = page;
    update();
  }
}
