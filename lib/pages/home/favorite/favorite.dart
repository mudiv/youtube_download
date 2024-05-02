import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:youtube_download/api/favorite_api.dart';
import 'package:youtube_download/constant/extension.dart';

import '../../../constant/download.dart';
import '../../../constant/my_theme.dart';
import '../../../controller/favorite.con.dart';
import '../../../controller/in_data_don_cont.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  String? link;
  GlobalKey<FormState> formdata = GlobalKey<FormState>();
  GetPageController get idpage => Get.find<GetPageController>();

  checkInputs() async {
    var i = formdata.currentState;
    if (i!.validate()) {
      i.save();
      if (link!.isNotEmpty && link!.contains("youtube.com") ||
          link!.contains("youtu.be")) {
        Favoriteapi().gatDataList(id: link!);

        Get.bottomSheet(Container(
          width: Get.width,
          height: 450,
          decoration: const BoxDecoration(
              color: MyColor.backgroundDark,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: GetBuilder<FavoriteController>(
            init: FavoriteController(),
            builder: (controller) {
              if (controller.isinit) {
                return const Center(child: CircularProgressIndicator());
              }
              return Column(
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
                          imageUrl: controller.dataList.image!,
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
                            controller.dataList.title!,
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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
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
                        // downlad video
                        Get.defaultDialog(
                          title: "Loading".tr,
                          middleText: "Pleas-wait".tr,
                          actions: [
                            const Center(child: CircularProgressIndicator()),
                            15.ph,
                          ],
                        );
                        bool res = await Download().downloadVideo(
                            page: idpage.page, id: controller.dataList.id);
                        Get.back();
                        if (res) {
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
                            color: MyColor.white,
                            fontSize: 20,
                            fontFamily: "ca2"),
                      ),
                    ),
                  ),
                  20.ph,
                ],
              );
            },
          ),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formdata,
      child: Column(
        children: [
          30.ph,
          Padding(
            padding: const EdgeInsets.all(13),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              onSaved: (newValue) {
                link = newValue ?? "";
              },
              decoration: InputDecoration(
                prefixIcon: Lottie.asset('assets/lottie/1.json', width: 20),
                hintStyle: const TextStyle(fontSize: 15, color: Colors.white),
                hintText: "Paste-the-link".tr,
                suffixIconColor: MyColor.mainColor,
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: MyColor.mainColor)),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                checkInputs();
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: MyColor.mainColor,
                fixedSize: Size(Get.width * .9, 50),
              ),
              child: Text(
                "loader".tr,
                style: const TextStyle(
                    color: MyColor.white, fontSize: 20, fontFamily: "ca2"),
              ),
            ),
          ),
          30.ph
        ],
      ),
    );
  }
}
