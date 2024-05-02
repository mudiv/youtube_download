import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_download/constant/extension.dart';
import 'package:youtube_download/constant/my_theme.dart';
import 'package:get_storage/get_storage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      10.ph,
      GestureDetector(
        onTap: () {
          Get.defaultDialog(
            barrierDismissible: true,
            backgroundColor: MyColor.backgroundDark,
            title: "Select-Language".tr,
            titleStyle: const TextStyle(color: Colors.white, fontSize: 20),
            middleText: "",
            actions: [
              GestureDetector(
                onTap: () {
                  final box = GetStorage();
                  box.write('Language', 'ar');
                  Get.updateLocale(const Locale('ar', 'IQ'));
                  Get.back();
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsetsDirectional.symmetric(
                      horizontal: 5, vertical: 5),
                  width: Get.width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey[800],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/ar.png",
                        width: 30,
                        height: 30,
                      ),
                      15.pw,
                      const Text(
                        "العربية",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final box = GetStorage();
                  box.write('Language', 'en');

                  Get.updateLocale(const Locale('en', 'US'));
                  Get.back();
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsetsDirectional.symmetric(
                      horizontal: 5, vertical: 5),
                  width: Get.width,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey[800],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/en.png",
                        width: 30,
                        height: 30,
                      ),
                      15.pw,
                      const Text(
                        "English",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsetsDirectional.symmetric(
              horizontal: 10, vertical: 10),
          width: Get.width,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[800],
          ),
          child: Row(
            children: [
              const Icon(
                Ionicons.language,
                color: Colors.white,
              ),
              15.pw,
              Text(
                "Select-Language".tr,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      10.ph,
      GestureDetector(
        onTap: () async {
          final Uri url =
              Uri.parse('https://mudiv.github.io/muntazir/idinx.html');
          if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
            throw Exception('Could not launch $url');
          }
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsetsDirectional.symmetric(
              horizontal: 10, vertical: 10),
          width: Get.width,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[800],
          ),
          child: Row(
            children: [
              const Icon(
                Ionicons.open_outline,
                color: Colors.white,
              ),
              15.pw,
              Text(
                "upgrad".tr,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),

      // inatagram account
      GestureDetector(
        onTap: () {
          final Uri url = Uri.parse('https://www.instagram.com/_v_go');
          launchUrl(url, mode: LaunchMode.externalApplication);
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsetsDirectional.symmetric(
              horizontal: 10, vertical: 10),
          width: Get.width,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[800],
          ),
          child: Row(
            children: [
              const Icon(
                Ionicons.logo_instagram,
                color: Colors.white,
              ),
              15.pw,
              Text(
                "instagram".tr,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      // email account
      GestureDetector(
        onTap: () {
          final Uri url = Uri.parse('mailto:muntazirhalim@gmail.com');
          launchUrl(url, mode: LaunchMode.externalApplication);
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsetsDirectional.symmetric(
              horizontal: 10, vertical: 10),
          width: Get.width,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[800],
          ),
          child: Row(
            children: [
              const Icon(
                Ionicons.mail_open,
                color: Colors.white,
              ),
              15.pw,
              Text(
                "email".tr,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Get.defaultDialog(
            barrierDismissible: true,
            backgroundColor: MyColor.backgroundDark,
            title: "about".tr,
            titleStyle: const TextStyle(color: Colors.white, fontSize: 20),
            middleText: "",
            actions: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "devloper".tr,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsetsDirectional.symmetric(
                        horizontal: 5, vertical: 5),
                    width: Get.width,
                    height: 66,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[800],
                    ),
                    child: Text(
                      "dec-dev".tr,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  10.ph,
                  GestureDetector(
                    onTap: () {
                      final Uri url = Uri.parse('https://github.com/mudiv');
                      launchUrl(url, mode: LaunchMode.externalApplication);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsetsDirectional.symmetric(
                          horizontal: 5, vertical: 5),
                      width: Get.width,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: Colors.grey[800],
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Ionicons.logo_github,
                            color: Colors.white,
                          ),
                          15.pw,
                          const Text(
                            "Github",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          );
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsetsDirectional.symmetric(
              horizontal: 10, vertical: 10),
          width: Get.width,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[800],
          ),
          child: Row(
            children: [
              const Icon(
                Ionicons.information_circle_outline,
                color: Colors.white,
              ),
              15.pw,
              Text(
                "about".tr,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
