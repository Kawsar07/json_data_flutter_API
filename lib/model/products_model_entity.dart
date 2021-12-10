import 'dart:convert';
import 'package:apishoping/generated/json/base/json_field.dart';
import 'package:apishoping/generated/json/products_model_entity.g.dart';

@JsonSerializable()
class ProductsModelEntity {

	bool? success;
	String? message;
	List<ProductsModelData>? data;
  
  ProductsModelEntity();

  factory ProductsModelEntity.fromJson(Map<String, dynamic> json) => $ProductsModelEntityFromJson(json);

  Map<String, dynamic> toJson() => $ProductsModelEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProductsModelData {

	@JSONField(name: "_id")
	String? sId;
	@JSONField(name: "on_sale")
	bool? onSale;
	@JSONField(name: "sale_percent")
	int? salePercent;
	int? sold;
	@JSONField(name: "slider_new")
	bool? sliderNew;
	@JSONField(name: "slider_recent")
	bool? sliderRecent;
	@JSONField(name: "slider_sold")
	bool? sliderSold;
	String? date;
	String? title;
	ProductsModelDataCategories? categories;
	ProductsModelDataSubcate? subcate;
	ProductsModelDataShop? shop;
	String? price;
	@JSONField(name: "sale_title")
	String? saleTitle;
	@JSONField(name: "sale_price")
	String? salePrice;
	String? description;
	String? colors;
	String? size;
	List<ProductsModelDataImages>? images;
	@JSONField(name: "__v")
	int? iV;
	@JSONField(name: "in_wishlist")
	bool? inWishlist;
  
  ProductsModelData();

  factory ProductsModelData.fromJson(Map<String, dynamic> json) => $ProductsModelDataFromJson(json);

  Map<String, dynamic> toJson() => $ProductsModelDataToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProductsModelDataCategories {

	@JSONField(name: "_id")
	String? sId;
	String? type;
	String? date;
	String? name;
	String? image;
	@JSONField(name: "__v")
	int? iV;
  
  ProductsModelDataCategories();

  factory ProductsModelDataCategories.fromJson(Map<String, dynamic> json) => $ProductsModelDataCategoriesFromJson(json);

  Map<String, dynamic> toJson() => $ProductsModelDataCategoriesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProductsModelDataSubcate {

	@JSONField(name: "_id")
	String? sId;
	String? date;
	String? name;
	String? parentid;
	@JSONField(name: "__v")
	int? iV;
  
  ProductsModelDataSubcate();

  factory ProductsModelDataSubcate.fromJson(Map<String, dynamic> json) => $ProductsModelDataSubcateFromJson(json);

  Map<String, dynamic> toJson() => $ProductsModelDataSubcateToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProductsModelDataShop {

	@JSONField(name: "_id")
	String? sId;
	@JSONField(name: "is_active")
	bool? isActive;
	@JSONField(name: "created_at")
	String? createdAt;
	String? name;
	String? description;
	String? shopemail;
	String? shopaddress;
	String? shopcity;
	String? userid;
	String? image;
	@JSONField(name: "__v")
	int? iV;
  
  ProductsModelDataShop();

  factory ProductsModelDataShop.fromJson(Map<String, dynamic> json) => $ProductsModelDataShopFromJson(json);

  Map<String, dynamic> toJson() => $ProductsModelDataShopToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class ProductsModelDataImages {

	@JSONField(name: "_id")
	String? sId;
	String? filename;
	String? url;
  
  ProductsModelDataImages();

  factory ProductsModelDataImages.fromJson(Map<String, dynamic> json) => $ProductsModelDataImagesFromJson(json);

  Map<String, dynamic> toJson() => $ProductsModelDataImagesToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}