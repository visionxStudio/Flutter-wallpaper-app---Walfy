import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:wallpaperapp/model/pexel_photo_model.dart';

class PexelRemoteService {
  static String apiKey =
      "563492ad6f91700001000001c32c205e590242acafbb15d822d367e7";

  static Future<List<PexelPhotosModel>> getCurratedWallpaper() async {
    List<PexelPhotosModel> photos = [];
    final response = await http.get(
        Uri.parse("https://api.pexels.com/v1/curated?per_page=30"),
        headers: {"Authorization": apiKey});
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      jsonData["photos"].forEach((element) {
        PexelPhotosModel pexelPhotosModel = new PexelPhotosModel();
        pexelPhotosModel = PexelPhotosModel.fromMap(element);
        photos.add(pexelPhotosModel);
      });
    } else {
      Get.snackbar(
          "Error", "Something went wrong while connecting to the server");
    }
    return photos;
  }

  static Future<List<PexelPhotosModel>> getCategorieWallpaper(
      {@required String category}) async {
    List<PexelPhotosModel> photos = [];
    final response = await http.get(
        Uri.parse(
            "https://api.pexels.com/v1/search?query=$category&per_page=30&page=1"),
        headers: {"Authorization": apiKey});
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      jsonData["photos"].forEach((element) {
        PexelPhotosModel pexelPhotosModel = new PexelPhotosModel();
        pexelPhotosModel = PexelPhotosModel.fromMap(element);
        photos.add(pexelPhotosModel);
      });
    } else {
      Get.snackbar(
          "Error", "Something went wrong while connecting to the server");
    }
    return photos;
  }
}
