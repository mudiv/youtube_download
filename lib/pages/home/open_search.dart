import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_data_api/youtube_data_api.dart';
import '../../api/search_open_api.dart';
import '../../constant/my_theme.dart';
import '../../controller/get_search_cont.dart';
import '../../widgets/home_card.dart';

class Searchopne extends StatefulWidget {
  final String search;

  const Searchopne({super.key, required this.search});

  @override
  State<Searchopne> createState() => _HomeState();
}

class _HomeState extends State<Searchopne> {
  late EasyRefreshController _controller;
  GetDatasearchController get dataProvider =>
      Get.find<GetDatasearchController>();

  int page = 1;

  YoutubeDataApi youtubeDataApi = YoutubeDataApi();
  gatData() async {
    await Datsearchapi().searchgatDataList(page: page, search: widget.search);
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
    dataProvider.claerData();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.backgroundDark,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: MyColor.white),
        backgroundColor: MyColor.backgroundDark,
        title: const Text(
          'loader',
          style: TextStyle(color: MyColor.white),
        ),
        centerTitle: true,
      ),
      body: GetBuilder<GetDatasearchController>(
        builder: (val) {
          return EasyRefresh.builder(
            controller: _controller,
            onRefresh: () async {
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
              _controller.finishLoad(IndicatorResult.noMore);
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
      ),
    );
  }
}
