import 'dart:io';

import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class Methods {
  static Future<void> askStoragePermission() async {
    if (Platform.isAndroid) if (await Permission.storage.isDenied) {
      PermissionStatus storagePermissionState =
          await Permission.storage.request();
      if (!storagePermissionState.isGranted) {
        SystemNavigator.pop(
          animated: true,
        );
      }
    }
  }
}
