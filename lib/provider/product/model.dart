import 'dart:convert';

import 'package:cobiz/services/data/local/db/gen/app_db.dart';
import 'package:flutter/material.dart' show Color;

class ProductModel {
  ProductData? productInfo;
  PriceData? price;
  Productstatu? productstatut;
  ProductphotoData? productImages;

  ProductModel({
    this.price,
    this.productInfo,
    this.productstatut,
    this.productImages,
  });

  List<ProductColor> get colors {
    String? jsonCaracteristique = productInfo?.caracteristic;
    if (jsonCaracteristique == null) {
      return [];
    }
    List<ProductColor> values = [];

    for (var c in jsonDecode(jsonCaracteristique)['colors']) {
      values.add(ProductColor.fromJson(c));
    }
    return values;
  }

  List<dynamic> get caracteristics {
    String? jsonCaracteristique = productInfo?.caracteristic;
    if (jsonCaracteristique == null) {
      return [];
    }

    return jsonDecode(jsonCaracteristique)['otherCaracteristique'];
  }
}

class ProductColor {
  Color? color;
  String? name;

  ProductColor({this.color, this.name});

  ProductColor.fromJson(Map<String, dynamic> json) {
    color = Color(int.parse(json['value'].toString()));
    name = json['name'];
  }

  Map<String, dynamic> get toMap => {
        "name": name,
        "value": color,
      };
}

class ProductImage {
  ProductphotoData? productphotoData;
  FileEnterpriseData? productImage;

  ProductImage({this.productImage, this.productphotoData});
}

class SetStockmodel {
  double? quantity;
  double? maximum;
  double? minimum;
  double? purshace;
  int? priceId;
  int? productId;

  SetStockmodel(
      {this.quantity,
      this.productId,
      this.maximum,
      this.minimum,
      this.purshace,
      required this.priceId});
}

class Totalproductmodel {
  final int totalservice;
  final int totalproduit;
  final int total;

  Totalproductmodel(
      {required this.totalproduit,
      required this.totalservice,
      required this.total});
}
