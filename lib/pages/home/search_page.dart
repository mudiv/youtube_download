import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:youtube_download/api/search_api.dart';

import '../../constant/my_theme.dart';
import '../../controller/search_cont.dart';
import 'open_search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.backgroundDark,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                onChanged: (newValue) {
                  Searchapi().searchList(query: newValue);
                },
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.search, color: MyColor.mainColor),
                  hintStyle: const TextStyle(fontSize: 15, color: Colors.white),
                  hintText: "Find-the-video".tr,
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
            GetBuilder<SearchDataController>(
              builder: (val) {
                if (val.dataList.isEmpty) {
                  return const SizedBox();
                }
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: val.dataList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        onTap: () {
                          String scarh = val.dataList[index];
                          val.claerData();

                          Get.to(() => Searchopne(
                                search: scarh,
                              ));
                        },
                        leading: const Icon(Ionicons.search),
                        trailing: InkWell(
                            onTap: () {},
                            child: const Icon(Ionicons.arrow_undo)),
                        title: Text(
                          val.dataList[index],
                          style: const TextStyle(color: Colors.white),
                        ));
                  },
                );
              },
            )
          ],
        ));
  }
}
