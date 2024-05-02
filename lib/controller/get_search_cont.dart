import 'package:get/get.dart';

import '../model/data_video.model.dart';

class GetDatasearchController extends GetxController {
  List<DataVideom> dataList = [];

  void addAllList({required List<DataVideom> dataList, required int page}) {
    this.dataList = dataList;
    update();
  }

  void claerData() {
    dataList = [];
    update();
  }
}
