import 'dart:async';
import 'package:get/get.dart';
import 'package:youtube_data_api/youtube_data_api.dart';

import '../controller/search_cont.dart';

class Searchapi extends GetConnect {
  SearchDataController get dataProvider => Get.find<SearchDataController>();
  YoutubeDataApi youtubeDataApi = YoutubeDataApi();

  Future<dynamic> searchList({required String query}) async {
    try {
      List<String> videos = await youtubeDataApi.fetchSuggestions(query);

      dataProvider.addAllList(dataList: videos);
    } catch (e) {
    }
  }
}
