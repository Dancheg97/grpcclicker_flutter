import 'package:flutter_test/flutter_test.dart';
import 'package:grpcclicker/logic/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  test('getProtoPathes', () async {
    var str = 'some/path';
    SharedPreferences.setMockInitialValues({
      'protos': [str],
    });
    expect((await Storage.getProtoPathes())[0], str);
  });
  test('removeProto', () async {
    var str = 'some/path';
    SharedPreferences.setMockInitialValues({
      'protos': [str],
    });
    await Storage.removeProto(str);
    expect((await Storage.getProtoPathes()).length, 0);
  });
  test('addProto', () async {
    SharedPreferences.setMockInitialValues({});
    var str = 'some/path';
    await Storage.addProto(str);
    expect((await Storage.getProtoPathes())[0], str);
    expect(await Storage.addProto(str), 'exists');
  });
  test('getAdresses', () async {
    var str = "test/adr/get";
    SharedPreferences.setMockInitialValues({
      "adresses": [str],
    });
    expect((await Storage.getAdresses())[0], str);
  });
  test('removeAdress', () async {
    var str = "test/adr/rmv";
    SharedPreferences.setMockInitialValues({
      "adresses": [str],
    });
    await Storage.removeAdress(str);
    expect((await Storage.getAdresses()).length, 0);
  });
  test('addAdress', () async {
    var str = "test/adr/rad";
    SharedPreferences.setMockInitialValues({});
    await Storage.addAdress(str);
    expect((await Storage.getAdresses())[0], str);
  });
  test('setCurrentAdress', () async {
    var str = "test/adr/setc";
    SharedPreferences.setMockInitialValues({});
    await Storage.setCurrentAdress(str);
    expect(await Storage.getCurrentAdress(), str);
  });
  test('getCurrentAdress', () async {
    var str = "test/adr/getc";
    SharedPreferences.setMockInitialValues({
      "curAdress": str,
    });
    expect(await Storage.getCurrentAdress(), str);
  });
  test('setCurrentRequest', () async {
    var str = "test/adr/getc";
    SharedPreferences.setMockInitialValues({});
    await Storage.setCurrentAdress(str);
    expect(await Storage.getCurrentAdress(), str);
  });
  test('getCurrentRequest', () async {
    var str = 'rand/req';
    SharedPreferences.setMockInitialValues({
      "curRequest": str,
    });
    expect(await Storage.getCurrentRequest(), str);
  });
  test('setCurrentPath', () async {
    var str = "test/adr/getc/pa";
    SharedPreferences.setMockInitialValues({});
    await Storage.setCurrentPath(str);
    expect(await Storage.getCurrentPath(), str);
  });
  test('getCurrentPath', () async {
    var str = 'rand/req';
    SharedPreferences.setMockInitialValues({
      "curPath": str,
    });
    expect(await Storage.getCurrentPath(), str);
  });
  test('setCurrentMethod', () async {
    var str = "test/adr/getc/adr";
    SharedPreferences.setMockInitialValues({});
    await Storage.setCurrentMethod(str);
    expect(await Storage.getCurrentMethod(), str);
  });
  test('getCurrentMethod', () async {
    var str = 'rand/req';
    SharedPreferences.setMockInitialValues({
      "curMethod": str,
    });
    expect(await Storage.getCurrentMethod(), str);
  });
}
