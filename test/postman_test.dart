import 'dart:convert';
import 'dart:io';
import 'package:postman/postman.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('First Test', () async {
      final file = File('./test/assets/test1.postman_collection.json');
      final content = file.readAsStringSync();
      final json = jsonDecode(content);

      final oldData = JsonEncoder.withIndent('  ').convert(json);
      print(oldData);

      File

      final collection = PostmanCollection.fromJson(json);
      final data = JsonEncoder.withIndent('  ').convert(collection.toJson());
      print(data);

      expect(data, oldData);
    });
  });
}
