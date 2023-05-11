class ProductModel {
  int? id;
  String? designation;
  String? entrytype;
  int? enterpriseId;
  String? description;
  String? caracteristic;
  String? unite;
  String? producttype;
  int? quantity;

  ProductModel({
    this.id,
    this.designation,
    this.entrytype,
    this.enterpriseId,
    this.description,
    this.caracteristic,
    this.unite,
    this.producttype,
    this.quantity,
  });

  ProductModel.fromJson(Map<String, dynamic>? json) {
    id = json?["id"];
    designation = json?['designation'];
    entrytype = json?['entrytype'];

    enterpriseId = json?['enterpriseId'];
    description = json?['description'];
    caracteristic = json?['caracteristic'];
    unite = json?['unite'];
    producttype = json?['producttype'];
    quantity = json?['quantity'];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "designation": designation,
        'entrytype': entrytype,
        'enterpriseId': enterpriseId,
        'description': description,
        'caracteristic': caracteristic,
        'unite': unite,
        'producttype': producttype,
        'quantity': quantity,
      };
}

class PriceModel {
  double? purchase;
  String? initialprice;
  String? finalprice;
  ProductModel? productId;

  PriceModel({
    this.purchase,
    this.initialprice,
    this.finalprice,
    this.productId,
  });

  PriceModel.fromJson(Map<String, dynamic>? json) {
    purchase = json?['purchase'];
    finalprice = json?['maximum'];
    initialprice = json?['minmum'];
  }

  Map<String, dynamic> toJson() => {
        'purchase': purchase,
        'maximum': finalprice,
        'minmum': initialprice,
      };
}

class InsertItem {
  final String? type;
  final String? designation;
  final String? description;
  final String? unity;
  final String? state;
  final String? caracteristique;
  final int? productId;
  final double? maximum;
  final double? minimum;
  final double? purchace;
  final int? priceId;
  final double? quantity;

  InsertItem({
    this.type,
    this.designation,
    this.description,
    this.unity,
    this.state,
    this.caracteristique,
    this.productId,
    this.maximum,
    this.minimum,
    this.purchace,
    this.priceId,
    this.quantity,
  });

  String get show =>
      "ADDOREDITPRODUCT(type : $type, designation : $designation, description : $description, unity: $unity, state : $state, caracteristique : $caracteristique, productId : $productId, maximum : $maximum, mimum : $minimum, purchce : $purchace, priceId: $priceId, quantity : $quantity)";
}
