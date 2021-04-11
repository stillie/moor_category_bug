import 'package:moor/moor.dart';

import 'my_database.dart';

part 'categories_dao.g.dart';

@UseDao(tables: [
  Categories,
])
class CategoryDao extends DatabaseAccessor<MyDatabase>
    with _$CategoryDaoMixin {
  CategoryDao(MyDatabase attachedDatabase) : super(attachedDatabase);

  Future<List<CategoryDataClass>> getAllCategories() =>
      select(categories).get();

  Future insertCategory(Insertable<CategoryDataClass> category) =>
      into(categories).insertOnConflictUpdate(category);

  Future readCategoryById(int id) {
    return (select(categories)
          ..where(
            (table) => table.id.equals(id),
          ))
        .get();
  }

  Future deleteCategory(int id) {
    return (delete(categories)..where((t) => t.id.equals(id))).go();
  }
}
