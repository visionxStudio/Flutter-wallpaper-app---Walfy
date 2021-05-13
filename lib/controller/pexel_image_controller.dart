import 'package:get/get.dart';
import 'package:wallpaperapp/model/pexel_photo_model.dart';
import 'package:wallpaperapp/services/pexels_remote_service.dart';

class PexelsImageController extends GetxController {
  var imageList = <PexelPhotosModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchPexelImages();
  }

  void fetchPexelImages() async {
    await PexelRemoteService.getCurratedWallpaper().then((pexelImages) {
      imageList.assignAll(pexelImages);
    });
  }
}
