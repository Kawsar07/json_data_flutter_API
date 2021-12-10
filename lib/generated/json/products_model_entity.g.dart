import 'package:apishoping/generated/json/base/json_convert_content.dart';
import 'package:apishoping/model/products_model_entity.dart';

ProductsModelEntity $ProductsModelEntityFromJson(Map<String, dynamic> json) {
	final ProductsModelEntity productsModelEntity = ProductsModelEntity();
	final bool? success = jsonConvert.convert<bool>(json['success']);
	if (success != null) {
		productsModelEntity.success = success;
	}
	final String? message = jsonConvert.convert<String>(json['message']);
	if (message != null) {
		productsModelEntity.message = message;
	}
	final List<ProductsModelData>? data = jsonConvert.convertListNotNull<ProductsModelData>(json['data']);
	if (data != null) {
		productsModelEntity.data = data;
	}
	return productsModelEntity;
}

Map<String, dynamic> $ProductsModelEntityToJson(ProductsModelEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['success'] = entity.success;
	data['message'] = entity.message;
	data['data'] =  entity.data?.map((v) => v.toJson()).toList();
	return data;
}

ProductsModelData $ProductsModelDataFromJson(Map<String, dynamic> json) {
	final ProductsModelData productsModelData = ProductsModelData();
	final String? sId = jsonConvert.convert<String>(json['_id']);
	if (sId != null) {
		productsModelData.sId = sId;
	}
	final bool? onSale = jsonConvert.convert<bool>(json['on_sale']);
	if (onSale != null) {
		productsModelData.onSale = onSale;
	}
	final int? salePercent = jsonConvert.convert<int>(json['sale_percent']);
	if (salePercent != null) {
		productsModelData.salePercent = salePercent;
	}
	final int? sold = jsonConvert.convert<int>(json['sold']);
	if (sold != null) {
		productsModelData.sold = sold;
	}
	final bool? sliderNew = jsonConvert.convert<bool>(json['slider_new']);
	if (sliderNew != null) {
		productsModelData.sliderNew = sliderNew;
	}
	final bool? sliderRecent = jsonConvert.convert<bool>(json['slider_recent']);
	if (sliderRecent != null) {
		productsModelData.sliderRecent = sliderRecent;
	}
	final bool? sliderSold = jsonConvert.convert<bool>(json['slider_sold']);
	if (sliderSold != null) {
		productsModelData.sliderSold = sliderSold;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		productsModelData.date = date;
	}
	final String? title = jsonConvert.convert<String>(json['title']);
	if (title != null) {
		productsModelData.title = title;
	}
	final ProductsModelDataCategories? categories = jsonConvert.convert<ProductsModelDataCategories>(json['categories']);
	if (categories != null) {
		productsModelData.categories = categories;
	}
	final ProductsModelDataSubcate? subcate = jsonConvert.convert<ProductsModelDataSubcate>(json['subcate']);
	if (subcate != null) {
		productsModelData.subcate = subcate;
	}
	final ProductsModelDataShop? shop = jsonConvert.convert<ProductsModelDataShop>(json['shop']);
	if (shop != null) {
		productsModelData.shop = shop;
	}
	final String? price = jsonConvert.convert<String>(json['price']);
	if (price != null) {
		productsModelData.price = price;
	}
	final String? saleTitle = jsonConvert.convert<String>(json['sale_title']);
	if (saleTitle != null) {
		productsModelData.saleTitle = saleTitle;
	}
	final String? salePrice = jsonConvert.convert<String>(json['sale_price']);
	if (salePrice != null) {
		productsModelData.salePrice = salePrice;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		productsModelData.description = description;
	}
	final String? colors = jsonConvert.convert<String>(json['colors']);
	if (colors != null) {
		productsModelData.colors = colors;
	}
	final String? size = jsonConvert.convert<String>(json['size']);
	if (size != null) {
		productsModelData.size = size;
	}
	final List<ProductsModelDataImages>? images = jsonConvert.convertListNotNull<ProductsModelDataImages>(json['images']);
	if (images != null) {
		productsModelData.images = images;
	}
	final int? iV = jsonConvert.convert<int>(json['__v']);
	if (iV != null) {
		productsModelData.iV = iV;
	}
	final bool? inWishlist = jsonConvert.convert<bool>(json['in_wishlist']);
	if (inWishlist != null) {
		productsModelData.inWishlist = inWishlist;
	}
	return productsModelData;
}

Map<String, dynamic> $ProductsModelDataToJson(ProductsModelData entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['_id'] = entity.sId;
	data['on_sale'] = entity.onSale;
	data['sale_percent'] = entity.salePercent;
	data['sold'] = entity.sold;
	data['slider_new'] = entity.sliderNew;
	data['slider_recent'] = entity.sliderRecent;
	data['slider_sold'] = entity.sliderSold;
	data['date'] = entity.date;
	data['title'] = entity.title;
	data['categories'] = entity.categories?.toJson();
	data['subcate'] = entity.subcate?.toJson();
	data['shop'] = entity.shop?.toJson();
	data['price'] = entity.price;
	data['sale_title'] = entity.saleTitle;
	data['sale_price'] = entity.salePrice;
	data['description'] = entity.description;
	data['colors'] = entity.colors;
	data['size'] = entity.size;
	data['images'] =  entity.images?.map((v) => v.toJson()).toList();
	data['__v'] = entity.iV;
	data['in_wishlist'] = entity.inWishlist;
	return data;
}

ProductsModelDataCategories $ProductsModelDataCategoriesFromJson(Map<String, dynamic> json) {
	final ProductsModelDataCategories productsModelDataCategories = ProductsModelDataCategories();
	final String? sId = jsonConvert.convert<String>(json['_id']);
	if (sId != null) {
		productsModelDataCategories.sId = sId;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		productsModelDataCategories.type = type;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		productsModelDataCategories.date = date;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		productsModelDataCategories.name = name;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		productsModelDataCategories.image = image;
	}
	final int? iV = jsonConvert.convert<int>(json['__v']);
	if (iV != null) {
		productsModelDataCategories.iV = iV;
	}
	return productsModelDataCategories;
}

Map<String, dynamic> $ProductsModelDataCategoriesToJson(ProductsModelDataCategories entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['_id'] = entity.sId;
	data['type'] = entity.type;
	data['date'] = entity.date;
	data['name'] = entity.name;
	data['image'] = entity.image;
	data['__v'] = entity.iV;
	return data;
}

ProductsModelDataSubcate $ProductsModelDataSubcateFromJson(Map<String, dynamic> json) {
	final ProductsModelDataSubcate productsModelDataSubcate = ProductsModelDataSubcate();
	final String? sId = jsonConvert.convert<String>(json['_id']);
	if (sId != null) {
		productsModelDataSubcate.sId = sId;
	}
	final String? date = jsonConvert.convert<String>(json['date']);
	if (date != null) {
		productsModelDataSubcate.date = date;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		productsModelDataSubcate.name = name;
	}
	final String? parentid = jsonConvert.convert<String>(json['parentid']);
	if (parentid != null) {
		productsModelDataSubcate.parentid = parentid;
	}
	final int? iV = jsonConvert.convert<int>(json['__v']);
	if (iV != null) {
		productsModelDataSubcate.iV = iV;
	}
	return productsModelDataSubcate;
}

Map<String, dynamic> $ProductsModelDataSubcateToJson(ProductsModelDataSubcate entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['_id'] = entity.sId;
	data['date'] = entity.date;
	data['name'] = entity.name;
	data['parentid'] = entity.parentid;
	data['__v'] = entity.iV;
	return data;
}

ProductsModelDataShop $ProductsModelDataShopFromJson(Map<String, dynamic> json) {
	final ProductsModelDataShop productsModelDataShop = ProductsModelDataShop();
	final String? sId = jsonConvert.convert<String>(json['_id']);
	if (sId != null) {
		productsModelDataShop.sId = sId;
	}
	final bool? isActive = jsonConvert.convert<bool>(json['is_active']);
	if (isActive != null) {
		productsModelDataShop.isActive = isActive;
	}
	final String? createdAt = jsonConvert.convert<String>(json['created_at']);
	if (createdAt != null) {
		productsModelDataShop.createdAt = createdAt;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		productsModelDataShop.name = name;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		productsModelDataShop.description = description;
	}
	final String? shopemail = jsonConvert.convert<String>(json['shopemail']);
	if (shopemail != null) {
		productsModelDataShop.shopemail = shopemail;
	}
	final String? shopaddress = jsonConvert.convert<String>(json['shopaddress']);
	if (shopaddress != null) {
		productsModelDataShop.shopaddress = shopaddress;
	}
	final String? shopcity = jsonConvert.convert<String>(json['shopcity']);
	if (shopcity != null) {
		productsModelDataShop.shopcity = shopcity;
	}
	final String? userid = jsonConvert.convert<String>(json['userid']);
	if (userid != null) {
		productsModelDataShop.userid = userid;
	}
	final String? image = jsonConvert.convert<String>(json['image']);
	if (image != null) {
		productsModelDataShop.image = image;
	}
	final int? iV = jsonConvert.convert<int>(json['__v']);
	if (iV != null) {
		productsModelDataShop.iV = iV;
	}
	return productsModelDataShop;
}

Map<String, dynamic> $ProductsModelDataShopToJson(ProductsModelDataShop entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['_id'] = entity.sId;
	data['is_active'] = entity.isActive;
	data['created_at'] = entity.createdAt;
	data['name'] = entity.name;
	data['description'] = entity.description;
	data['shopemail'] = entity.shopemail;
	data['shopaddress'] = entity.shopaddress;
	data['shopcity'] = entity.shopcity;
	data['userid'] = entity.userid;
	data['image'] = entity.image;
	data['__v'] = entity.iV;
	return data;
}

ProductsModelDataImages $ProductsModelDataImagesFromJson(Map<String, dynamic> json) {
	final ProductsModelDataImages productsModelDataImages = ProductsModelDataImages();
	final String? sId = jsonConvert.convert<String>(json['_id']);
	if (sId != null) {
		productsModelDataImages.sId = sId;
	}
	final String? filename = jsonConvert.convert<String>(json['filename']);
	if (filename != null) {
		productsModelDataImages.filename = filename;
	}
	final String? url = jsonConvert.convert<String>(json['url']);
	if (url != null) {
		productsModelDataImages.url = url;
	}
	return productsModelDataImages;
}

Map<String, dynamic> $ProductsModelDataImagesToJson(ProductsModelDataImages entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['_id'] = entity.sId;
	data['filename'] = entity.filename;
	data['url'] = entity.url;
	return data;
}