import 'dart:async';
import 'dart:math';
import 'package:get/get.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../controller/get_data_cont.dart';
import '../model/data_video.model.dart';

class Datapi extends GetConnect {
  GetDataController get dataProvider => Get.find<GetDataController>();
  List taksList = [
    "اغاني",
    "افلام",
    "مسلسلات",
    "برامج تلفزيونية",
    "مقاطع مضحكة",
    "مقاطع تعليمية",
    "مقاطع رياضية",
    "مقاطع اطفال",
    "مقاطع انمي",
    "مقاطع اكشن",
    "مقاطع موسيقية",
    "مقاطع درامية",
    "مقاطع مرعبة",
    "مقاطع اثارة",
    "مقاطع كوميدية",
    "مقاطع انستقرام",
    "مقاطع تيك توك",
    "مقاطع سناب شات",
    "مقاطع تويتر",
    "مقاطع فيسبوك",
    "مقاطع يوتيوب",
    "مقاطع تيك توك",
    "مقاطع سناب شات",
    "مقاطع تويتر",
    "مقاطع فيسبوك",
    "مقاطع يوتيوب",
    "مقاطع تيك توك",
    "مقاطع سناب شات",
    "مقاطع تويتر",
    "مقاطع فيسبوك",
    "مقاطع يوتيوب",
    "مقاطع تيك توك",
    "مقاطع سناب شات",
    "مقاطع تويتر",
    "مقاطع فيسبوك",
    "مقاطع يوتيوب",
    "مقاطع تيك توك",
    "مقاطع سناب شات",
    "مقاطع تويتر",
    "مقاطع فيسبوك",
    "مقاطع يوتيوب",
    "مقاطع تيك توك",
    "مقاطع سناب شات",
    "مقاطع تويتر",
    "مقاطع فيسب",
    "مقاطع يوتيوب",
    "music",
    "movies",
    "series",
    "tv shows",
    "funny clips",
    "an educational clips",
    "music no copyright",
    "sports clips",
    "children clips",
    "anime clips",
    "action clips",
    "music clips",
    "drama clips",
    "عراق",
    "مصر",
    "السعودية",
    "الكويت",
    "ضحك",
    "موسيقى",
    "اغاني",
    "افلام",
    "مقاطع ترفيهية",
    "مقاطع رياضية",
    "مقاطع تكنولوجية",
    "مقاطع طبخ",
    "مقاطع سفر",
    "مقاطع تاريخية",
    "مقاطع علمية",
    "مقاطع سياسية",
    "مقاطع فنية",
    "مقاطع تصميم",
    "مقاطع حيوانات",
    "مقاطع طريفة",
    "مقاطع مضحكة",
    "مقاطع تحديات",
    "مقاطع تجارب علمية",
    "مقاطع تجميل",
    "مقاطع صحة وجمال",
    "مقاطع تطوير ذاتي",
    "مقاطع ألعاب فيديو",
    "مقاطع تقنية",
    "مقاطع تصوير فوتوغرافي",
    "مقاطع فلك",
    "مقاطع طبيعة",
    "مقاطع سيارات",
    "مقاطع موضة",
    "مقاطع مكياج",
    "مقاطع تصفيف شعر",
    "مقاطع تجهيزات منزلية",
    "مقاطع تصميم داخلي",
    "مقاطع تصميم خارجي",
    "مقاطع تصميم حدائق",
    "مقاطع تصميم مطابخ",
    "مقاطع تصميم حمامات",
    "مقاطع تصميم غرف نوم",
    "مقاطع تصميم غرف معيشة",
    "مقاطع تصميم غرف طعام",
    "مقاطع تصميم غرف أطفال",
    "مقاطع تصميم غرف مكتب",
    "مقاطع تصميم غرف استقبال",
    "مقاطع تصميم غرف ضيافة",
    "مقاطع تصميم غرف ملابس",
    "مقاطع تصميم غرف تخزين",
    "مقاطع تصميم غرف غسيل",
    "مقاطع تصميم غرف مراجعة",
    "مقاطع تصميم غرف مكتبات",
    "مقاطع تصميم غرف معارض",
    "مقاطع تصميم غرف مطاعم",
    "مقاطع تصميم غرف فنادق",
    "مقاطع تصميم غرف شقق",
    "مقاطع تصميم غرف فيلات",
    "مقاطع تصميم غرف قصور",
    "مقاطع تصميم غرف مساجد",
    "مقاطع تصميم غرف كنائس",
    "مقاطع تصميم غرف مستشفيات",
    "مقاطع تصميم غرف مدارس",
    "مقاطع تصميم غرف جامعات",
    "مقاطع تصميم غرف مسارح",
    "مقاطع تصميم غرف مكاتب",
    "مقاطع تصميم غرف معاهد",
    "مقاطع تصميم غرف مراكز",
    "مقاطع تصميم غرف محلات",
    "مقاطع تصميم غرف مطاعم",
    "مقاطع تصميم غرف مقاهي",
  ];

  Future<dynamic> gatDataList({required int page}) async {
    try {
      final yt = YoutubeExplode();
      final randomIndex = Random().nextInt(taksList.length);
      final searchResults = await yt.search.getVideos(taksList[randomIndex]);
      List<DataVideom> dataList = searchResults.take(100).map((video) {
        return DataVideom(
          image: video.thumbnails.highResUrl,
          title: video.title,
          id: video.id.value,
        );
      }).toList();
      dataProvider.addAllList(dataList: dataList, page: page);
    } catch (e) {}
  }
}