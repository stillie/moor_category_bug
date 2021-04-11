import 'dart:convert';

import 'package:moor_flutter/moor_flutter.dart';

import 'category.dart';

class CategoryTypeConverter extends TypeConverter<List<Category>, String> {
  const CategoryTypeConverter();
  @override
  List<Category> mapToDart(String fromDb) {
    if (fromDb == null) return null;
    Map<String, dynamic> json = jsonDecode(fromDb);
    return (json as List)
        ?.map((e) => e == null ? null : Category.fromJson(e))
        ?.toList();
  }

  @override
  String mapToSql(List<Category> value) {
    if (value == null) return null;
    return json.encode(value.asMap());
  }
}
