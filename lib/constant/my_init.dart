import 'package:get/get.dart';

import '../controller/dashboard_provider.dart';
import '../controller/get_data_cont.dart';
import '../controller/get_search_cont.dart';
import '../controller/in_data_don_cont.dart';
import '../controller/search_cont.dart';

myInit() {
  Get.put(DashboardProvider());
  Get.put(GetDataController());
  Get.put(SearchDataController());
  Get.put(GetDatasearchController());

  Get.put(GetPageController());

  //
}
