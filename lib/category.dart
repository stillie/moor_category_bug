class Category {
  final int id;
  final String description;
  final List<Category> categories;

  Category({this.id, this.description, this.categories});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] as int,
      description: json['description'] as String,
      categories: (json['children'] as List)
          ?.map((e) =>
              e == null ? null : Category.fromJson(e as Map<String, dynamic>))
          ?.toList(),
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'description': description,
        'children': categories,
      };
}
