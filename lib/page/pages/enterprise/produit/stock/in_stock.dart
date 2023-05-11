import 'package:animate_do/animate_do.dart';
import 'package:cobiz/controller/bloc/bloc.dart';
import 'package:cobiz/page/page_controller/product/mise_en_stock_controller.dart';
import 'package:cobiz/provider/product/model.dart';
import 'package:cobiz/services/data/local/db/query/product_querry.dart';
import 'package:cobiz/services/shared/utils/pop_up_model_detail_produit.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InStock extends StatefulWidget {
  const InStock({super.key});

  @override
  State<InStock> createState() => _InStockState();
}

class _InStockState extends State<InStock> {
  ProductQuery productQuery = ProductQuery.singleton;
  String? keyWord;
  AppBloc bloc = AppBloc();
  MiseEnStockController stockController = MiseEnStockController();
  @override
  Widget build(BuildContext context) {
    return LargePoppupModel(
      child: Column(children: [
        infoTabBar(),
        tabHeader(),
        Expanded(
          child: SingleChildScrollView(
            child: StreamBuilder<List<ProductModel>>(
                stream: productQuery.getAllProducts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        snapshot.data!.length,
                        (index) => ZoomIn(
                          child: ProductStock(
                            index: index,
                            product: snapshot.data![index],
                          ),
                        ),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text("error : ${snapshot.error}");
                  } else {
                    return Container();
                  }
                }),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: APPSTYLE.WHITE_COLOR,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 150,
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: APPSTYLE.DESABLE_COLOR,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.cancel,
                    style: APPSTYLE.body1,
                  ),
                ),
              ),
              15.widthBox,
              InkWell(
                onTap: () {
                  stockController.submit(bloc);
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  width: 150,
                  decoration: BoxDecoration(
                    color: APPSTYLE.PRIMARY_COLOR_LIGH,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.save,
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      color: APPSTYLE.WHITE_COLOR,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget infoTabBar() {
    return Container(
      padding: const EdgeInsets.only(
        left: 60,
        right: 60,
        top: 15,
        bottom: 30,
      ),
      decoration: BoxDecoration(
        color: APPSTYLE.DESABLE_COLOR,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.close),
                ),
              ),
              Text(
                "Mise en stock",
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          15.widthBox,
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: APPSTYLE.BORDER_COLOR,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    onChanged: (value) {
                      setState(() {
                        keyWord = value.trim().isEmpty ? null : value;
                      });
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      hintText: "Tapez un mot clé",
                      hintStyle: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                10.widthBox,
                Icon(
                  Iconsax.search_normal,
                  color: APPSTYLE.SECOND_TEXT_COLOR,
                  size: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget tabHeader() {
    double space = 15;
    return Container(
      padding: const EdgeInsets.only(
        left: 60,
        right: 60,
        top: 15,
        bottom: 15,
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(
              title: AppLocalizations.of(context)!.headerTabEmployeCode,
            ),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(
              title: AppLocalizations.of(context)!.headerTabProductName,
            ),
          ),
          space.widthBox,
          Expanded(
            flex: 2,
            child: tabHeaderDetailModel(
              title: AppLocalizations.of(context)!.headerTabProductDescription,
            ),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(
              title: "Quantie en stock",
            ),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(
              title: "Prix d'achat",
            ),
          ),
          30.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(
              title: "Prix de vente min",
            ),
          ),
          30.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(
              title: "Prix de vente max",
            ),
          ),
          30.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(
              title: "Quantite",
            ),
          ),
        ],
      ),
    );
  }

  Widget tabHeaderDetailModel({String? title}) {
    return Text(
      title!,
      maxLines: 1,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
    );
  }
}

class ProductStock extends StatelessWidget {
  final int? index;
  final ProductModel product;
  MiseEnStockController? stockController;
  Widget spacer = 15.widthBox;
  ProductStock({super.key, this.index, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: OnHoverEffect(
        child: Container(
          padding: const EdgeInsets.only(
            left: 60,
            right: 60,
            bottom: 15,
            top: 15,
          ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: APPSTYLE.WHITE_COLOR,
            borderRadius: BorderRadius.circular(4),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: APPSTYLE.SHADOW_COLOR,
                offset: const Offset(3, 5),
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: productModel(
                  title: "00${index! + 1}",
                ),
              ),
              spacer,
              Expanded(
                flex: 1,
                child: Text(
                  product.productInfo!.designation,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
              ),
              spacer,
              Expanded(
                flex: 2,
                child: productModel(title: product.productInfo!.description),
              ),
              spacer,
              Expanded(
                flex: 1,
                child: productModel(
                    title:
                        "${product.productInfo?.quantity} ${product.productInfo?.unite}"),
              ),
              spacer,
              Expanded(
                flex: 1,
                child: inStockForm(
                  hint: "${product.price?.purchase}",
                  controller: stockController?.prixachat,
                ),
              ),
              30.widthBox,
              Expanded(
                flex: 1,
                child: inStockForm(
                  hint: "${product.price?.minimum}",
                  controller: stockController?.prixinitial,
                ),
              ),
              30.widthBox,
              Expanded(
                flex: 1,
                child: inStockForm(
                  hint: "${product.price?.maximun}",
                  controller: stockController?.prixfinal,
                ),
              ),
              30.widthBox,
              Expanded(
                flex: 1,
                child: inStockForm(
                  hint: "0.0",
                  controller: stockController?.quantite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget productModel({String? title}) {
    return title == null
        ? const SizedBox.shrink()
        : Text(
            title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: GoogleFonts.montserrat(
              fontSize: 12,
              color: APPSTYLE.SECOND_TEXT_COLOR,
              height: 1.5,
            ),
          );
  }

  Widget inStockForm({
    TextEditingController? controller,
    String? hint,
    bool? isHiden,
    String? label,
  }) {
    return Container(
      width: 70,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      decoration: BoxDecoration(
        color: APPSTYLE.DESABLE_COLOR.withOpacity(.25),
        borderRadius: BorderRadius.circular(2),
      ),
      child: TextField(
        style: GoogleFonts.montserrat(
          fontSize: 12,
          color: Colors.black,
        ),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[.]{0,1}[0-9]*')),
        ],
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          isDense: true,
          hintText: hint,
          hintStyle: GoogleFonts.montserrat(
            fontSize: 12,
            color: isHiden == true ? APPSTYLE.DESABLE_COLOR : null,
          ),
        ),
      ),
    );
  }
}
