import 'package:get/get_state_manager/get_state_manager.dart';

class SearchDataController extends GetxController {
  List<String> dataList = [];
  int page = 1;

  void addAllList({required List<String> dataList}) {
    this.dataList = dataList;
    update();
  }

  void claerData() {
    dataList = [];
    update();
  }
}
