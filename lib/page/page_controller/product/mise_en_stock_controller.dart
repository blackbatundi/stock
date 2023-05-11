import 'package:cobiz/controller/bloc/bloc.dart';
import 'package:cobiz/controller/bloc/event.dart';
import 'package:cobiz/provider/product/model.dart';
import 'package:flutter/material.dart';

class MiseEnStockController {
  int? productId;
  TextEditingController? prixinitial;
  TextEditingController? prixfinal;
  TextEditingController? prixachat;
  TextEditingController? quantite;
  List<SetStockmodel> inStock = [];

  MiseEnStockController({SetStockmodel? stock}) {
    productId = stock?.productId;
    prixinitial = TextEditingController(text: stock?.minimum.toString());
    prixfinal = TextEditingController(text: stock?.maximum.toString());
    prixachat = TextEditingController(text: stock?.purshace.toString());
    quantite = TextEditingController();
  }

  bool get validation =>
      prixinitial!.text.trim().isNotEmpty ||
      prixfinal!.text.trim().isNotEmpty ||
      prixachat!.text.trim().isNotEmpty ||
      quantite!.text.trim().isNotEmpty;

  void submit(AppBloc bloc) {
    List<SetStockmodel> dataStock = [];
    for (SetStockmodel st in inStock) {
      dataStock.add(
        SetStockmodel(
          quantity: st.quantity,
          maximum: st.maximum,
          minimum: st.minimum,
          purshace: st.purshace,
          priceId: st.priceId,
          productId: st.productId,
        ),
      );
    }
    bloc.add(
      SetStock(dataStock),
    );
  }
}
