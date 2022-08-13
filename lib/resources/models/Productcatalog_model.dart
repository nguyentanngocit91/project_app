import 'dart:convert';

List<ProductCatalogModel> ProductCatalogModelFromJson(String str) => List<ProductCatalogModel>.from(
    json.decode(str).map((x) => ProductCatalogModel.fromJson(x)));

String ProductCatalogModelToJson(List<ProductCatalogModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class ProductCatalogModel {
  int? id;
  int? lft;
  int? rgt;
  dynamic parentId;
  String? name;
  String? slug;
  dynamic photo;
  dynamic icon;
  int? position;
  bool? isPublish;
  bool? isIndex;
  String? type;
  String? createdAt;
  String? updatedAt;
  int? depth;
  String? photoSmall;
  String? photoMedium;
  String? photoLarge;
  List<Children>? children;

  ProductCatalogModel({
    this.id,
    this.lft,
    this.rgt,
    this.parentId,
    this.name,
    this.slug,
    this.photo,
    this.icon,
    this.position,
    this.isPublish,
    this.isIndex,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.depth,
    this.photoSmall,
    this.photoMedium,
    this.photoLarge,
    this.children,
  });

  ProductCatalogModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    lft = json['_lft'] as int?;
    rgt = json['_rgt'] as int?;
    parentId = json['parent_id'];
    name = json['name'] as String?;
    slug = json['slug'] as String?;
    photo = json['photo'];
    icon = json['icon'];
    position = json['position'] as int?;
    isPublish = json['is_publish'] as bool?;
    isIndex = json['is_index'] as bool?;
    type = json['type'] as String?;
    createdAt = json['created_at'] as String?;
    updatedAt = json['updated_at'] as String?;
    depth = json['depth'] as int?;
    photoSmall = json['photo_small'] as String?;
    photoMedium = json['photo_medium'] as String?;
    photoLarge = json['photo_large'] as String?;
    children = (json['children'] as List?)?.map((dynamic e) => Children.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['_lft'] = lft;
    json['_rgt'] = rgt;
    json['parent_id'] = parentId;
    json['name'] = name;
    json['slug'] = slug;
    json['photo'] = photo;
    json['icon'] = icon;
    json['position'] = position;
    json['is_publish'] = isPublish;
    json['is_index'] = isIndex;
    json['type'] = type;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    json['depth'] = depth;
    json['photo_small'] = photoSmall;
    json['photo_medium'] = photoMedium;
    json['photo_large'] = photoLarge;
    json['children'] = children?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Children {
  int? id;
  int? lft;
  int? rgt;
  int? parentId;
  String? name;
  String? slug;
  dynamic photo;
  dynamic icon;
  int? position;
  bool? isPublish;
  bool? isIndex;
  String? type;
  String? createdAt;
  String? updatedAt;
  int? depth;
  String? photoSmall;
  String? photoMedium;
  String? photoLarge;
  List<dynamic>? children;

  Children({
    this.id,
    this.lft,
    this.rgt,
    this.parentId,
    this.name,
    this.slug,
    this.photo,
    this.icon,
    this.position,
    this.isPublish,
    this.isIndex,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.depth,
    this.photoSmall,
    this.photoMedium,
    this.photoLarge,
    this.children,
  });

  Children.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    lft = json['_lft'] as int?;
    rgt = json['_rgt'] as int?;
    parentId = json['parent_id'] as int?;
    name = json['name'] as String?;
    slug = json['slug'] as String?;
    photo = json['photo'];
    icon = json['icon'];
    position = json['position'] as int?;
    isPublish = json['is_publish'] as bool?;
    isIndex = json['is_index'] as bool?;
    type = json['type'] as String?;
    createdAt = json['created_at'] as String?;
    updatedAt = json['updated_at'] as String?;
    depth = json['depth'] as int?;
    photoSmall = json['photo_small'] as String?;
    photoMedium = json['photo_medium'] as String?;
    photoLarge = json['photo_large'] as String?;
    children = json['children'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['_lft'] = lft;
    json['_rgt'] = rgt;
    json['parent_id'] = parentId;
    json['name'] = name;
    json['slug'] = slug;
    json['photo'] = photo;
    json['icon'] = icon;
    json['position'] = position;
    json['is_publish'] = isPublish;
    json['is_index'] = isIndex;
    json['type'] = type;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    json['depth'] = depth;
    json['photo_small'] = photoSmall;
    json['photo_medium'] = photoMedium;
    json['photo_large'] = photoLarge;
    json['children'] = children;
    return json;
  }
}