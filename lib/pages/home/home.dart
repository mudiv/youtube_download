import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_data_api/youtube_data_api.dart';
import 'package:youtube_download/api/home_api.dart';
import '../../constant/my_theme.dart';
import '../../controller/get_data_cont.dart';
import '../../widgets/home_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late EasyRefreshController _controller;
  int page = 1;

  YoutubeDataApi youtubeDataApi = YoutubeDataApi();
  gatData() async {
    await Datapi().gatDataList(page: page);
  }

  @override
  void initState() {
    super.initState();
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
    gatData();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GetDataController>(
      builder: (val) {
        return EasyRefresh.builder(
          controller: _controller,
          onRefresh: () async {
            page = 0;
            await gatData();
            _controller.finishRefresh(IndicatorResult.success);
          },
          header: const BezierHeader(
            clamping: false,
            showBalls: true,
            backgroundColor: MyColor.backgroundDark,
            // spinWidget: loadingWhite(),
          ),
          onLoad: () async {
            if (!mounted) {
              return;
            }
            page++;
            gatData().then((value) {
              _controller.finishLoad(IndicatorResult.success);
            });
          },
          childBuilder: (context, physics) {
            return val.dataList.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    physics: physics,
                    itemCount: val.dataList.length,
                    itemBuilder: (context, index) {
                      return InfoHomeData(
                        dataList: val.dataList[index],
                      );
                    },
                  );
          },
        );
      },
    );
  }
}
