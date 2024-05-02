import 'package:get/get.dart';

import '../model/data_video.model.dart';

class FavoriteController extends GetxController {
  late DataVideom dataList;
  bool isinit = true;

  void addAllList({required DataVideom dataList}) {
    this.dataList = dataList;
    isinit = false;
    update();
  }
}
