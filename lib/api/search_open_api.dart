import 'dart:async';
import 'package:get/get.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../controller/get_search_cont.dart';
import '../model/data_video.model.dart';

class Datsearchapi extends GetConnect {
  GetDatasearchController get dataProvider =>
      Get.find<GetDatasearchController>();

  Future<dynamic> searchgatDataList(
      {required int page, required String search}) async {
    try {
      final yt = YoutubeExplode();
      final searchResults = await yt.search.getVideos(search);
      List<DataVideom> dataList = searchResults.take(100).map((video) {
        return DataVideom(
          image: video.thumbnails.highResUrl,
          title: video.title,
          id: video.id.toString(),
        );
      }).toList();
      dataProvider.addAllList(dataList: dataList, page: page);
    } catch (e) {}
  }
}
