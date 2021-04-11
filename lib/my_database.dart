import 'package:flutter/foundation.dart';
import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

import 'categories_dao.dart';
import 'category_type_converter.dart';
part 'my_database.g.dart';

@DataClassName('CategoryDataClass')
class Categories extends Table {
  IntColumn get id => integer()();
  TextColumn get description => text()();
  TextColumn get categories =>
      text().map(const CategoryTypeConverter()).nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@UseMoor(tables: [
  Categories,
], daos: [
  CategoryDao,
])
class MyDatabase extends _$MyDatabase {
  MyDatabase({QueryExecutor e})
      : super(
          e ??
              FlutterQueryExecutor.inDatabaseFolder(
                path: "my_database.db",
                logStatements: !kReleaseMode,
              ),
        );

  @override
  int get schemaVersion => 1;
}
