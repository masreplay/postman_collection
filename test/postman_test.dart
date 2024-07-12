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

      final actual = JsonEncoder.withIndent('  ').convert(json);
      print(actual);

      final collection = PostmanCollection.fromJson(json);
      final matcher = JsonEncoder.withIndent('  ').convert(collection.toJson());
      File('./test/assets/test1.postman_collection.json')
          .writeAsStringSync(matcher);
      print(matcher);

      expect(matcher, actual);
    });
  });
}
