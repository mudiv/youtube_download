import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_data_api/models/video.dart';
import 'package:youtube_data_api/youtube_data_api.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:http/http.dart' as http;
import '../../constant/my_theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String res = '========';
  YoutubeDataApi youtubeDataApi = YoutubeDataApi();

  Future<String> getData() async {
    final yt = YoutubeExplode();
    final streamInfo = await yt.videos.streamsClient.getManifest('fRh_vgS2dFE');

    var audioOnlyStreams = streamInfo.audioOnly;
    var audioStream = audioOnlyStreams.withHighestBitrate();

    yt.close();
    return audioStream.url.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: TextButton(
                onPressed: () async {
                  res = await getData();
                  debugPrint(res);

                  // List<Video> videos =
                  //     await youtubeDataApi.fetchTrendingVideo();
                  // print(videos[5].videoId);

                  // VideoData? videoData =
                  //     await youtubeDataApi.fetchVideoData("fbV6sFzkT8M");
                  // // String? videoTitle = videoData?.video?.title;
                  // // // String? videoChannelName = videoData?.video?.username;
                  // // String? viewsCount = videoData?.video?.viewCount;
                  // // String? likeCount = videoData?.video?.likeCount;
                  // // String? channelThumbnail = videoData?.video?.channelThumb;
                  // // String? channelId = videoData?.video?.channelId;
                  // // String? subscribeCount = videoData?.video?.subscribeCount;
                  // // List<Video?>? relatedVideos = videoData?.videosList;
                  // // print(likeCount);
                },
                child: Text('hiii', style: TextStyle(color: MyColor.white)))),
        TextButton(
            onPressed: () async {
              await Clipboard.setData(ClipboardData(text: res));
            },
            child: Text(res, style: TextStyle(color: MyColor.white)))
      ],
    );
  }
}
