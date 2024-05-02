import 'dart:async';
import 'package:get/get.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../controller/favorite.con.dart';
import '../model/data_video.model.dart';

class Favoriteapi extends GetConnect {
  FavoriteController get dataProvider => Get.find<FavoriteController>();

  Future<dynamic> gatDataList({required String id}) async {
    try {
      final yt = YoutubeExplode();
      final searchResults = await yt.videos.get(id);

      DataVideom dataList = DataVideom(
        image: searchResults.thumbnails.highResUrl,
        title: searchResults.title,
        id: searchResults.id.value,
      );

      dataProvider.addAllList(dataList: dataList);
    } catch (e) {}
  }
}
