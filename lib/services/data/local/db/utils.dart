import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

LazyDatabase openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationSupportDirectory();
    final file = File(path.join(dbFolder.path, 'cobiz.sqlite'));

    return NativeDatabase(file);
  });
}

int rowVerion([int? lastVersion]) => lastVersion != null ? ++lastVersion : 1;
