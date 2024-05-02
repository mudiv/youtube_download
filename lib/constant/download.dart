import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class Download {
  Future<bool> downloadVideo({required page, dataList, id}) async {
    String title = "loader-video";
    if (dataList != null) {
      id = dataList.id.toString();
      title = dataList.title;
    }
    final yt = YoutubeExplode();
    final streamInfo = await yt.videos.streamsClient.getManifest(id);

    var videoStreams = streamInfo.video;

    for (var stream in videoStreams) {
      if (stream.videoResolution.toString().contains("1080") &&
              stream.runtimeType.toString() == "MuxedStreamInfo" &&
              page == 5 ||
          page == 6) {
        FileDownloader.downloadFile(
          url: stream.url.toString(),
          name: "loader-$title.mp4", //(optional)
        );
        return true;
      } else if (stream.videoResolution.toString().contains("720") &&
          stream.runtimeType.toString() == "MuxedStreamInfo" &&
          page == 4) {
        FileDownloader.downloadFile(
          url: stream.url.toString(),
          name: "loader-$title.mp4", //(optional)
        );
        return true;
      }
      //854x480
      else if (stream.videoResolution.toString().contains("480") &&
          stream.runtimeType.toString() == "MuxedStreamInfo" &&
          page == 3) {
        FileDownloader.downloadFile(
          url: stream.url.toString(),
          name: "loader-$title}.mp4", //(optional)
        );
        return true;
      } else if (stream.videoResolution.toString().contains("360") &&
          stream.runtimeType.toString() == "MuxedStreamInfo" &&
          page == 2) {
        FileDownloader.downloadFile(
          url: stream.url.toString(),
          name: "loader-$title.mp4", //(optional)
        );
        return true;
      } else if (stream.videoResolution.toString().contains("240") &&
          stream.runtimeType.toString() == "MuxedStreamInfo" &&
          page == 1) {
        FileDownloader.downloadFile(
          url: stream.url.toString(),
          name: "loader-$title.mp4", //(optional)
        );
        return true;
      } else if (stream.videoResolution.toString().contains("144") &&
          stream.runtimeType.toString() == "MuxedStreamInfo" &&
          page == 0) {
        FileDownloader.downloadFile(
          url: stream.url.toString(),
          name: "loader-$title.mp4", //(optional)
        );
        return true;
      } else {
        return false;
      }
    }

    yt.close();
    return false;
  }
}
