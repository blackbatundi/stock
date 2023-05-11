import 'dart:convert';
import 'dart:io';
import 'package:cobiz/controller/bloc/bloc.dart';
import 'package:cobiz/controller/bloc/event.dart';
import 'package:cobiz/provider/product/model.dart';
import 'package:cobiz/provider/produit/modele.dart';
import 'package:flutter/material.dart';

class ProductController {
  File? image;
  String? productType = "Produit";
  List<String> dropDownTypreValues = ["Produit", "Service"];
  String? isNew = "Neuf";
  List<String> isNewValue = ["Neuf", "Seconde main"];
  List<ProductColor> selectedColor = [];
  List<String> caracteristique = [];
  int? priceId;
  int? productId;
  TextEditingController? prixinitial;
  TextEditingController? prixfinal;
  TextEditingController? prixachat;
  TextEditingController? quantite;
  TextEditingController? designation;
  TextEditingController? description;
  TextEditingController? unite;

  TextEditingController? fournisseur;

  ProductController({var product}) {
    priceId = product?.price?.id;
    productId = product?.productInfo?.id;
    isNew = product?.productInfo?.producttype ?? "Neuf";
    productType = product?.productInfo?.entrytype ?? "Produit";
    prixinitial =
        TextEditingController(text: product?.price?.minimum.toString());
    prixfinal = TextEditingController(text: product?.price?.maximun.toString());
    prixachat =
        TextEditingController(text: product?.price?.purchase.toString());
    quantite = TextEditingController();
    designation =
        TextEditingController(text: product?.productInfo?.designation);
    description =
        TextEditingController(text: product?.productInfo?.description);
    unite = TextEditingController(text: product?.productInfo?.unite);
    fournisseur = TextEditingController();

    if (product != null) {
      for (var c in product.caracteristics) {
        caracteristique.add(c.toString());
      }
      for (ProductColor p in product.colors) {
        selectedColor.add(p);
      }
    }
  }

  bool get validation => productType == "Produit"
      ? quantite!.text.trim().isNotEmpty && prixachat!.text.trim().isNotEmpty
      : true &&
          designation!.text.trim().isNotEmpty &&
          unite!.text.trim().isNotEmpty &&
          prixinitial!.text.trim().isNotEmpty &&
          prixfinal!.text.trim().isNotEmpty;

  void submit(AppBloc bloc, List<ProductController>? addedProducts) {
    List<InsertItem> items = [];
    for (ProductController p in addedProducts!) {
      List<Map<String, dynamic>> mappedSelectedColors = [];

      for (ProductColor pc in p.selectedColor) {
        mappedSelectedColors.add({
          "value": pc.color?.value,
          "name": pc.name,
        });
      }

      Map<String, dynamic> data = {
        "colors": mappedSelectedColors,
        "otherCaracteristique": p.caracteristique,
      };
      items.add(InsertItem(
        type: p.productType,
        designation: p.designation!.text.trim(),
        description: p.description!.text.trim(),
        unity: p.unite!.text.trim(),
        state: p.isNew,
        caracteristique: jsonEncode(data),
        maximum: double.tryParse(p.prixfinal!.text.trim()),
        minimum: double.tryParse(
          p.prixinitial!.text.trim(),
        ),
        purchace: double.tryParse(p.prixachat!.text.trim()),
        quantity: double.tryParse(p.quantite!.text.trim()),
      ));
    }

    bloc.add(
      ADDOREDITPRODUCT(
        items: items,
      ),
    );
  }
}
