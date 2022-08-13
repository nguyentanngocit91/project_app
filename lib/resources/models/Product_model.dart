import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  final int? id;
  final String? sku;
  final String? slug;
  final String? name;
  final String? photo;
  final dynamic link;
  final int? regularPrice;
  final int? originalPrice;
  final int? sellingPrice;
  final int? specialPrice;
  final dynamic specialPriceStart;
  final dynamic specialPriceEnd;
  final dynamic brandId;
  final int? providerId;
  final int? viewed;
  final int? position;
  final bool? isPublish;
  final bool? isHot;
  final String? createdAt;
  final String? updatedAt;
  final String? displayName;
  final String? photoSmall;
  final String? photoMedium;
  final String? photoLarge;
  final double? rating;
  final List<Media>? media;
  final List<Contents>? contents;

  final List<Categories>? categories;
  final List<Options>? options;
  final List<dynamic>? attributes;

  Product({
    this.id,
    this.sku,
    this.slug,
    this.name,
    this.photo,
    this.link,
    this.regularPrice,
    this.originalPrice,
    this.sellingPrice,
    this.specialPrice,
    this.specialPriceStart,
    this.specialPriceEnd,
    this.brandId,
    this.providerId,
    this.viewed,
    this.position,
    this.isPublish,
    this.isHot,
    this.createdAt,
    this.updatedAt,
    this.displayName,
    this.photoSmall,
    this.photoMedium,
    this.photoLarge,
    this.rating,
    this.media,
    this.contents,

    this.categories,
    this.options,
    this.attributes,
  });

  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        sku = json['sku'] as String?,
        slug = json['slug'] as String?,
        name = json['name'] as String?,
        photo = json['photo'] as String?,
        link = json['link'],
        regularPrice = json['regular_price'] as int?,
        originalPrice = json['original_price'] as int?,
        sellingPrice = json['selling_price'] as int?,
        specialPrice = json['special_price'] as int?,
        specialPriceStart = json['special_price_start'],
        specialPriceEnd = json['special_price_end'],
        brandId = json['brand_id'],
        providerId = json['provider_id'] as int?,
        viewed = json['viewed'] as int?,
        position = json['position'] as int?,
        isPublish = json['is_publish'] as bool?,
        isHot = json['is_hot'] as bool?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?,
        displayName = json['displayName'] as String?,
        photoSmall = json['photo_small'] as String?,
        photoMedium = json['photo_medium'] as String?,
        photoLarge = json['photo_large'] as String?,
        rating = json['rating'] as double?,
        media = (json['media'] as List?)
            ?.map((dynamic e) => Media.fromJson(e as Map<String, dynamic>))
            .toList(),
        contents = (json['contents'] as List?)
            ?.map((dynamic e) => Contents.fromJson(e as Map<String, dynamic>))
            .toList(),



        categories = (json['categories'] as List?)
            ?.map((dynamic e) => Categories.fromJson(e as Map<String, dynamic>))
            .toList(),
        options = (json['options'] as List?)
            ?.map((dynamic e) => Options.fromJson(e as Map<String, dynamic>))
            .toList(),
        attributes = json['attributes'] as List?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'sku': sku,
        'slug': slug,
        'name': name,
        'photo': photo,
        'link': link,
        'regular_price': regularPrice,
        'original_price': originalPrice,
        'selling_price': sellingPrice,
        'special_price': specialPrice,
        'special_price_start': specialPriceStart,
        'special_price_end': specialPriceEnd,
        'brand_id': brandId,
        'provider_id': providerId,
        'viewed': viewed,
        'position': position,
        'is_publish': isPublish,
        'is_hot': isHot,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'displayName': displayName,
        'photo_small': photoSmall,
        'photo_medium': photoMedium,
        'photo_large': photoLarge,
        'rating': rating,
        'media': media?.map((e) => e.toJson()).toList(),
        'contents': contents?.map((e) => e.toJson()).toList(),
        'categories': categories?.map((e) => e.toJson()).toList(),
        'options': options?.map((e) => e.toJson()).toList(),
        'attributes': attributes
      };
}

class Media {
  final int? id;
  final String? mediableType;
  final int? mediableId;
  final String? name;
  final String? url;
  final String? mimeType;
  final int? size;
  final int? position;
  final dynamic createdAt;
  final dynamic updatedAt;

  Media({
    this.id,
    this.mediableType,
    this.mediableId,
    this.name,
    this.url,
    this.mimeType,
    this.size,
    this.position,
    this.createdAt,
    this.updatedAt,
  });

  Media.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        mediableType = json['mediable_type'] as String?,
        mediableId = json['mediable_id'] as int?,
        name = json['name'] as String?,
        url = json['url'] as String?,
        mimeType = json['mime_type'] as String?,
        size = json['size'] as int?,
        position = json['position'] as int?,
        createdAt = json['created_at'],
        updatedAt = json['updated_at'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'mediable_type': mediableType,
        'mediable_id': mediableId,
        'name': name,
        'url': url,
        'mime_type': mimeType,
        'size': size,
        'position': position,
        'created_at': createdAt,
        'updated_at': updatedAt
      };
}

class Contents {
  final int? id;
  final String? contentableType;
  final int? contentableId;
  final String? name;
  final String? slug;
  final dynamic description;
  final String? details;
  final dynamic metaTitle;
  final dynamic metaKeywords;
  final dynamic metaDescription;
  final int? position;
  final bool? isPublish;
  final String? type;
  final String? createdAt;
  final String? updatedAt;

  Contents({
    this.id,
    this.contentableType,
    this.contentableId,
    this.name,
    this.slug,
    this.description,
    this.details,
    this.metaTitle,
    this.metaKeywords,
    this.metaDescription,
    this.position,
    this.isPublish,
    this.type,
    this.createdAt,
    this.updatedAt,
  });

  Contents.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        contentableType = json['contentable_type'] as String?,
        contentableId = json['contentable_id'] as int?,
        name = json['name'] as String?,
        slug = json['slug'] as String?,
        description = json['description'],
        details = json['details'] as String?,
        metaTitle = json['meta_title'],
        metaKeywords = json['meta_keywords'],
        metaDescription = json['meta_description'],
        position = json['position'] as int?,
        isPublish = json['is_publish'] as bool?,
        type = json['type'] as String?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'contentable_type': contentableType,
        'contentable_id': contentableId,
        'name': name,
        'slug': slug,
        'description': description,
        'details': details,
        'meta_title': metaTitle,
        'meta_keywords': metaKeywords,
        'meta_description': metaDescription,
        'position': position,
        'is_publish': isPublish,
        'type': type,
        'created_at': createdAt,
        'updated_at': updatedAt
      };
}

class Categories {
  final int? id;
  final int? lft;
  final int? rgt;
  final int? parentId;
  final String? name;
  final String? slug;
  final dynamic photo;
  final dynamic icon;
  final int? position;
  final bool? isPublish;
  final bool? isIndex;
  final String? type;
  final String? createdAt;
  final String? updatedAt;
  final String? photoSmall;
  final String? photoMedium;
  final String? photoLarge;
  final Pivot? pivot;

  Categories({
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
    this.photoSmall,
    this.photoMedium,
    this.photoLarge,
    this.pivot,
  });

  Categories.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        lft = json['_lft'] as int?,
        rgt = json['_rgt'] as int?,
        parentId = json['parent_id'] as int?,
        name = json['name'] as String?,
        slug = json['slug'] as String?,
        photo = json['photo'],
        icon = json['icon'],
        position = json['position'] as int?,
        isPublish = json['is_publish'] as bool?,
        isIndex = json['is_index'] as bool?,
        type = json['type'] as String?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?,
        photoSmall = json['photo_small'] as String?,
        photoMedium = json['photo_medium'] as String?,
        photoLarge = json['photo_large'] as String?,
        pivot = (json['pivot'] as Map<String, dynamic>?) != null
            ? Pivot.fromJson(json['pivot'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        '_lft': lft,
        '_rgt': rgt,
        'parent_id': parentId,
        'name': name,
        'slug': slug,
        'photo': photo,
        'icon': icon,
        'position': position,
        'is_publish': isPublish,
        'is_index': isIndex,
        'type': type,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'photo_small': photoSmall,
        'photo_medium': photoMedium,
        'photo_large': photoLarge,
        'pivot': pivot?.toJson()
      };
}

class Options {
  final int? id;
  final String? name;
  final String? type;
  final int? position;
  final bool? isGlobal;
  final bool? isRequired;
  final bool? isPublish;
  final String? createdAt;
  final String? updatedAt;
  final Pivot? pivot;
  final List<Values>? values;

  Options({
    this.id,
    this.name,
    this.type,
    this.position,
    this.isGlobal,
    this.isRequired,
    this.isPublish,
    this.createdAt,
    this.updatedAt,
    this.pivot,
    this.values,
  });

  Options.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        type = json['type'] as String?,
        position = json['position'] as int?,
        isGlobal = json['is_global'] as bool?,
        isRequired = json['is_required'] as bool?,
        isPublish = json['is_publish'] as bool?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?,
        pivot = (json['pivot'] as Map<String, dynamic>?) != null
            ? Pivot.fromJson(json['pivot'] as Map<String, dynamic>)
            : null,
        values = (json['values'] as List?)
            ?.map((dynamic e) => Values.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'position': position,
        'is_global': isGlobal,
        'is_required': isRequired,
        'is_publish': isPublish,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'pivot': pivot?.toJson(),
        'values': values?.map((e) => e.toJson()).toList()
      };
}

class Pivot {
  final int? productId;
  final int? optionId;

  Pivot({
    this.productId,
    this.optionId,
  });

  Pivot.fromJson(Map<String, dynamic> json)
      : productId = json['product_id'] as int?,
        optionId = json['option_id'] as int?;

  Map<String, dynamic> toJson() =>
      {'product_id': productId, 'option_id': optionId};
}

class Values {
  final int? id;
  final String? name;
  final dynamic value;
  final int? price;
  final String? priceType;
  final int? optionId;
  final int? position;

  Values({
    this.id,
    this.name,
    this.value,
    this.price,
    this.priceType,
    this.optionId,
    this.position,
  });

  Values.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        value = json['value'],
        price = json['price'] as int?,
        priceType = json['price_type'] as String?,
        optionId = json['option_id'] as int?,
        position = json['position'] as int?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'value': value,
        'price': price,
        'price_type': priceType,
        'option_id': optionId,
        'position': position
      };
}
