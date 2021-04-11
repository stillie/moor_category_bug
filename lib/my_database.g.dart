// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class CategoryDataClass extends DataClass
    implements Insertable<CategoryDataClass> {
  final int id;
  final String description;
  final List<Category> categories;
  CategoryDataClass(
      {@required this.id, @required this.description, this.categories});
  factory CategoryDataClass.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return CategoryDataClass(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      categories: $CategoriesTable.$converter0.mapToDart(stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}categories'])),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || categories != null) {
      final converter = $CategoriesTable.$converter0;
      map['categories'] = Variable<String>(converter.mapToSql(categories));
    }
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      categories: categories == null && nullToAbsent
          ? const Value.absent()
          : Value(categories),
    );
  }

  factory CategoryDataClass.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CategoryDataClass(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      categories: serializer.fromJson<List<Category>>(json['categories']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
      'categories': serializer.toJson<List<Category>>(categories),
    };
  }

  CategoryDataClass copyWith(
          {int id, String description, List<Category> categories}) =>
      CategoryDataClass(
        id: id ?? this.id,
        description: description ?? this.description,
        categories: categories ?? this.categories,
      );
  @override
  String toString() {
    return (StringBuffer('CategoryDataClass(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('categories: $categories')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(id.hashCode, $mrjc(description.hashCode, categories.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CategoryDataClass &&
          other.id == this.id &&
          other.description == this.description &&
          other.categories == this.categories);
}

class CategoriesCompanion extends UpdateCompanion<CategoryDataClass> {
  final Value<int> id;
  final Value<String> description;
  final Value<List<Category>> categories;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.categories = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const Value.absent(),
    @required String description,
    this.categories = const Value.absent(),
  }) : description = Value(description);
  static Insertable<CategoryDataClass> custom({
    Expression<int> id,
    Expression<String> description,
    Expression<String> categories,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (categories != null) 'categories': categories,
    });
  }

  CategoriesCompanion copyWith(
      {Value<int> id,
      Value<String> description,
      Value<List<Category>> categories}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      categories: categories ?? this.categories,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (categories.present) {
      final converter = $CategoriesTable.$converter0;
      map['categories'] =
          Variable<String>(converter.mapToSql(categories.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('categories: $categories')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, CategoryDataClass> {
  final GeneratedDatabase _db;
  final String _alias;
  $CategoriesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _categoriesMeta = const VerificationMeta('categories');
  GeneratedTextColumn _categories;
  @override
  GeneratedTextColumn get categories => _categories ??= _constructCategories();
  GeneratedTextColumn _constructCategories() {
    return GeneratedTextColumn(
      'categories',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, description, categories];
  @override
  $CategoriesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'categories';
  @override
  final String actualTableName = 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<CategoryDataClass> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    context.handle(_categoriesMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CategoryDataClass map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CategoryDataClass.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(_db, alias);
  }

  static TypeConverter<List<Category>, String> $converter0 =
      const CategoryTypeConverter();
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $CategoriesTable _categories;
  $CategoriesTable get categories => _categories ??= $CategoriesTable(this);
  CategoryDao _categoryDao;
  CategoryDao get categoryDao =>
      _categoryDao ??= CategoryDao(this as MyDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [categories];
}
