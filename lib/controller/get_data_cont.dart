import 'package:get/get.dart';

import '../model/data_video.model.dart';

class GetDataController extends GetxController {
  List<DataVideom> dataList = [];

  void addAllList({required List<DataVideom> dataList, required int page}) {
    if (page == 0) {
      this.dataList.clear();
    }
    this.dataList.addAll(dataList);
    update();
  }
}
