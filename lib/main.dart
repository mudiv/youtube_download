import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:youtube_download/constant/my_theme.dart';
import 'constant/locale.dart';
import 'constant/my_init.dart';
import 'pages/home/home_page.dart';

Locale language = const Locale('ar', 'IQ');
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await GetStorage.init();

  final box = GetStorage();

  String? res = box.read('Language');
  if (res == null) {
    language = Get.deviceLocale!;
  } else if (res == 'ar') {
    language = const Locale('ar', 'IQ');
  } else {
    language = const Locale('en', 'US');
  }

  myInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: language,
      translations: Mylocal(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: MyColor.mainColor),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
