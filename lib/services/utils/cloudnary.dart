import 'dart:async';
import 'dart:io';

import 'package:cloudinary/cloudinary.dart';

class Cloudnary {
  late Cloudinary _cloudinary;
  Cloudnary() {
    _cloudinary = Cloudinary.signedConfig(
      apiKey: '183236767775548',
      apiSecret: '49kEdUoml0Mbpum0T6ySr5yszYI',
      cloudName: 'dyynhihy5',
    );
  }

  Future<String?> uploadfiletocloud(File file) async {
    final response = await _cloudinary.upload(
      file: file.path,
      fileBytes: file.readAsBytesSync(),
      resourceType: CloudinaryResourceType.image,
      folder: 'cobiz',
      fileName: file.path.substring(file.path.lastIndexOf('/')),
    );

    return response.isSuccessful ? response.secureUrl : null;
  }
}
