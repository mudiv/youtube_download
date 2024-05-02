import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_download/constant/extension.dart';
import 'package:youtube_download/constant/my_theme.dart';
import 'package:youtube_download/controller/in_data_don_cont.dart';

import '../constant/download.dart';
import '../model/data_video.model.dart';

class InfoHomeData extends StatefulWidget {
  final DataVideom dataList;

  const InfoHomeData({super.key, required this.dataList});

  @override
  State<InfoHomeData> createState() => _InfoHomeDataState();
}

class _InfoHomeDataState extends State<InfoHomeData> {
  get dataList => widget.dataList;
  int page = 1;
  GetPageController get idpage => Get.find<GetPageController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.bottomSheet(Container(
          width: Get.width,
          height: 450,
          decoration: const BoxDecoration(
              color: MyColor.backgroundDark,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              10.ph,
              Container(
                width: 50,
                height: 3,
                color: Colors.white,
              ),
              10.ph,
              Divider(
                color: Colors.grey.withOpacity(0.1),
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    width: 100,
                    height: 60,
                    child: CachedNetworkImage(
                      imageUrl: dataList.image!,
                      fit: BoxFit.cover,
                      fadeInDuration: const Duration(milliseconds: 0),
                      fadeOutDuration: const Duration(milliseconds: 0),
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                              child: CircularProgressIndicator(
                                  value: downloadProgress.progress)),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        dataList.title!,
                        maxLines: 2,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey.withOpacity(0.1),
              ),
              GetBuilder<GetPageController>(
                builder: (val) {
                  return Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          val.addAllList(page: 1);
                        },
                        child: Container(
                            width: 130,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                border: Border.all(
                                    color: val.page == 1
                                        ? MyColor.mainColor
                                        : Colors.white)),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.download,
                                  color: Colors.white,
                                ),
                                Text(
                                  '240p',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          val.addAllList(page: 2);
                        },
                        child: Container(
                            width: 130,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                border: Border.all(
                                    color: val.page == 2
                                        ? MyColor.mainColor
                                        : Colors.white)),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.download,
                                  color: Colors.white,
                                ),
                                Text(
                                  '360p',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          val.addAllList(page: 3);
                        },
                        child: Container(
                            width: 130,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                border: Border.all(
                                    color: val.page == 3
                                        ? MyColor.mainColor
                                        : Colors.white)),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.download,
                                  color: Colors.white,
                                ),
                                Text(
                                  '480p',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          val.addAllList(page: 4);
                        },
                        child: Container(
                            width: 130,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                border: Border.all(
                                    color: val.page == 4
                                        ? MyColor.mainColor
                                        : Colors.white)),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.download,
                                  color: Colors.white,
                                ),
                                Text(
                                  '720p',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          val.addAllList(page: 5);
                        },
                        child: Container(
                            width: 130,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                border: Border.all(
                                    color: val.page == 5
                                        ? MyColor.mainColor
                                        : Colors.white)),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.download,
                                  color: Colors.white,
                                ),
                                Text(
                                  '1080p',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                      ),
                      GestureDetector(
                        onTap: () {
                          val.addAllList(page: 6);
                        },
                        child: Container(
                            width: 130,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                border: Border.all(
                                    color: val.page == 6
                                        ? MyColor.mainColor
                                        : Colors.white)),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.download,
                                  color: Colors.white,
                                ),
                                Text(
                                  '4k',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                      ),
                    ],
                  );
                },
              ),
              20.ph,
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    Get.defaultDialog(
                      title: "Loading".tr,
                      middleText: "Pleas-wait".tr,
                      actions: [
                        const Center(child: CircularProgressIndicator()),
                        15.ph,
                      ],
                    );
                    bool res = await Download()
                        .downloadVideo(page: idpage.page, dataList: dataList);

                    Get.back();
                    if (res) {
                      Get.back();
                    } else {
                      Get.defaultDialog(
                        title: "Quality-error".tr,
                        middleText: "Not-found".tr,
                        actions: [
                          LottieBuilder.asset("assets/lottie/13.json",
                              width: 100, repeat: false),
                        ],
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: MyColor.mainColor,
                    fixedSize: Size(Get.width * .8, 30),
                  ),
                  child: Text(
                    "loader".tr,
                    style: const TextStyle(
                        color: MyColor.white, fontSize: 20, fontFamily: "ca2"),
                  ),
                ),
              ),
              20.ph,
            ],
          ),
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 2, bottom: 2),
        width: Get.width,
        height: Get.height * .4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height * .25,
              child: CachedNetworkImage(
                imageUrl: dataList.image!,
                fit: BoxFit.cover,
                fadeInDuration: const Duration(milliseconds: 0),
                fadeOutDuration: const Duration(milliseconds: 0),
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                        child: CircularProgressIndicator(
                            value: downloadProgress.progress)),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                dataList.title!,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
