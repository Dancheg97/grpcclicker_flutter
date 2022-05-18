import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:grpcclicker/logic/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('getProtoPathes', () async {
    var testPath = 'some/path';
    SharedPreferences.setMockInitialValues({
      'protos': [testPath],
    });
    var pathes = await Storage.getProtoPathes();
    expect(pathes[0], testPath);
  });
  test('removeProto', () async {
    var testPath = 'some/path';
    SharedPreferences.setMockInitialValues({
      'protos': [testPath],
    });
    await Storage.removeProto(testPath);
    var pathes = await Storage.getProtoPathes();
    expect(pathes.length, 0);
  });
  test('addProto', () async {
    SharedPreferences.setMockInitialValues({});
    var testPath = 'some/path';
    await Storage.addProto(testPath);
    var pathes = await Storage.getProtoPathes();
    expect(pathes[0], testPath);
  });
}
