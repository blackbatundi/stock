import 'dart:io';

import 'package:file_picker/file_picker.dart';

Future<List<File>?> pickImages(bool isMultiple) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    allowMultiple: isMultiple,
    type: FileType.custom,
    allowedExtensions: ['jpg', 'png'],
  );

  if (result != null) {
    List<File> files = [];
    for (String? filePath in result.paths) {
      files.add(File(filePath!));
    }
    return files;
  }
  return null;
}
