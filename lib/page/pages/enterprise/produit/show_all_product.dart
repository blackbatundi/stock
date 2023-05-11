import 'package:animate_do/animate_do.dart';
import 'package:cobiz/page/pages/enterprise/produit/add_product.dart';
import 'package:cobiz/page/pages/enterprise/produit/detail_product.dart';
import 'package:cobiz/page/pages/enterprise/produit/stock/in_stock.dart';
import 'package:cobiz/provider/product/model.dart';
import 'package:cobiz/services/data/local/db/query/product_querry.dart';
import 'package:cobiz/services/shared/utils/utils_function.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShowProduct extends StatefulWidget {
  const ShowProduct({super.key});

  @override
  State<ShowProduct> createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct>
    with SingleTickerProviderStateMixin {
  ProductQuery productQuery = ProductQuery.singleton;

  TabController? _tabController;
  bool? isDesignationAsc;
  bool? isPriceAsc;
  bool? isRecentAdded;
  bool? isNewAsc;
  bool? isProduct;
  String? keyWord;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    keyWord = null;
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        infoTabBar(),
        24.heightBox,
        // Container(
        //   padding: const EdgeInsets.symmetric(vertical: 10),
        //   decoration: BoxDecoration(
        //     color: APPSTYLE.WHITE_COLOR,
        //     borderRadius: BorderRadius.circular(4),
        //   ),
        //   child: Column(
        //     children: [
        //       tabBar(),
        //       tabHeader(),
        //     ],
        //   ),
        // ),
        allProduct(),
      ],
    );
  }

  Widget tabBar() {
    return Container(
      padding: const EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: APPSTYLE.DESABLE_COLOR,
          ),
        ),
      ),
      child: Row(
        children: [
          FutureBuilder<Totalproductmodel>(
              future: productQuery.totalNumberProduit,
              builder: (context, snapshot) {
                return TabBar(
                  onTap: (index) {
                    setState(() {
                      index == 0
                          ? isProduct = null
                          : index == 1
                              ? isProduct = true
                              : isProduct = false;
                    });
                  },
                  isScrollable: true,
                  padding: const EdgeInsets.all(0),
                  unselectedLabelStyle:
                      GoogleFonts.montserrat(color: APPSTYLE.BLACK_COLOR),
                  labelStyle: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: APPSTYLE.PRIMARY_COLOR_LIGH,
                  ),
                  indicatorWeight: 3,
                  indicatorColor: APPSTYLE.BLACK_COLOR,
                  labelColor: APPSTYLE.BLACK_COLOR,
                  labelPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  controller: _tabController,
                  physics: const BouncingScrollPhysics(),
                  tabs: [
                    Row(
                      children: [
                        const Text("Tout"),
                        10.widthBox,
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: APPSTYLE.DESABLE_COLOR,
                          ),
                          child: Text(
                            "${snapshot.data?.total}",
                            style: GoogleFonts.montserrat(
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Produits"),
                        10.widthBox,
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: APPSTYLE.DESABLE_COLOR,
                          ),
                          child: Text(
                            "${snapshot.data?.totalproduit}",
                            style: GoogleFonts.montserrat(
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("Services"),
                        10.widthBox,
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 3,
                            horizontal: 5,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: APPSTYLE.DESABLE_COLOR,
                          ),
                          child: Text(
                            "${snapshot.data?.totalservice}",
                            style: GoogleFonts.montserrat(
                              fontSize: 8,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }),
          const Spacer(),
          24.widthBox,
          InkWell(
            onTap: () {
              setState(() {
                if (isRecentAdded != null || isDesignationAsc != null) {
                  isRecentAdded = isDesignationAsc = null;
                }
                isPriceAsc =
                    isPriceAsc == null || isPriceAsc == false ? true : false;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: APPSTYLE.WHITE_COLOR,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: APPSTYLE.DESABLE_COLOR, width: 1),
              ),
              child: Row(
                children: [
                  const Icon(Iconsax.money),
                  Icon(
                    isPriceAsc == true
                        ? Icons.arrow_drop_down
                        : Icons.arrow_drop_up,
                  ),
                ],
              ),
            ),
          ),
          10.widthBox,
          InkWell(
            onTap: () {
              setState(() {
                if (isPriceAsc != null || isDesignationAsc != null) {
                  isPriceAsc = isDesignationAsc = null;
                }
                isRecentAdded = isRecentAdded == null || isRecentAdded == false
                    ? true
                    : false;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: APPSTYLE.WHITE_COLOR,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: APPSTYLE.DESABLE_COLOR, width: 1),
              ),
              child: Row(
                children: [
                  const Icon(Iconsax.calendar),
                  Icon(
                    isRecentAdded == true
                        ? Icons.arrow_drop_down
                        : Icons.arrow_drop_up,
                  ),
                ],
              ),
            ),
          ),
          10.widthBox,
          InkWell(
            onTap: () {
              setState(() {
                if (isPriceAsc != null || isRecentAdded != null) {
                  isPriceAsc = isRecentAdded = null;
                }

                isDesignationAsc =
                    isDesignationAsc == null || isDesignationAsc == false
                        ? true
                        : false;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: APPSTYLE.WHITE_COLOR,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: APPSTYLE.DESABLE_COLOR, width: 1),
              ),
              child: Row(
                children: [
                  const Icon(Iconsax.text),
                  Icon(
                    isDesignationAsc == true
                        ? Icons.arrow_drop_down
                        : Icons.arrow_drop_up,
                  ),
                ],
              ),
            ),
          ),
          15.widthBox,
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                color: APPSTYLE.ON_CONTAINER_COLOR,
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
          ),
        ],
      ),
    );
  }

  allProduct() {
    return Expanded(
      child: SingleChildScrollView(
        child: StreamBuilder<List<ProductModel>>(
            stream: productQuery.getAllProducts(
              asc: isDesignationAsc,
              pricefilter: isPriceAsc,
              entrytype: isProduct,
              keyword: keyWord,
              recentornewer: isRecentAdded,
            ),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      24.heightBox,
                      ...List.generate(
                        snapshot.data!.length,
                        (index) => ZoomIn(
                          child: product(
                              index: index, product: snapshot.data![index]),
                        ),
                      ),
                    ]);
              } else if (snapshot.hasError) {
                return Text("error : ${snapshot.error}");
              } else {
                return Container();
              }
            }),
      ),
    );
  }

  Widget tabHeader() {
    double space = 15;
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30,
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
              title: AppLocalizations.of(context)!.headerTabProductQuantity,
            ),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(
              title: "Prix",
            ),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(
              title: "Etat du produit",
            ),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(
              title: "Type",
            ),
          ),
        ],
      ),
    );
  }

  Widget product({
    int? index,
    required ProductModel product,
  }) {
    Widget spacer = 15.widthBox;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: OnHoverEffect(
        child: InkWell(
          onTap: () {
            customershowDialog(
              context,
              child: DetailProduct(
                productId: product.productInfo!.id,
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
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
                      title: product.productInfo!.entrytype == "Service"
                          ? "${product.productInfo?.unite}"
                          : "${product.productInfo?.quantity} ${product.productInfo?.unite}"),
                ),
                spacer,
                Expanded(
                  flex: 1,
                  child: Text(
                    "${product.price?.maximun} USD",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w900,
                      height: 1.5,
                    ),
                  ),
                ),
                spacer,
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 5,
                        ),
                        decoration: BoxDecoration(
                          color: product.productInfo!.producttype == "Neuf"
                              ? APPSTYLE.ORANGE.withOpacity(.15)
                              : APPSTYLE.PINK.withOpacity(.3),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      10.widthBox,
                      Expanded(
                        child: Text(
                          product.productInfo!.producttype!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: product.productInfo!.producttype == "Neuf"
                                ? APPSTYLE.ORANGE
                                : APPSTYLE.PINK,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                spacer,
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: product.productInfo!.entrytype == "Service"
                              ? APPSTYLE.GREEN.withOpacity(.15)
                              : APPSTYLE.PRIMARY_COLOR_DARK.withOpacity(.3),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text(
                          product.productInfo!.entrytype,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              color: product.productInfo!.entrytype == "Service"
                                  ? APPSTYLE.GREEN
                                  : APPSTYLE.PRIMARY_COLOR_DARK),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget infoTabBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            AppLocalizations.of(context)!.titleProduct,
            style: GoogleFonts.montserrat(
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
          15.widthBox,
          Row(
            children: [
              OnHoverEffect(
                child: InkWell(
                  onTap: () {
                    customershowDialog(
                      context,
                      child: const InStock(),
                    );
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    decoration: BoxDecoration(
                      color: APPSTYLE.DESABLE_COLOR,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      "Mise en stock",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        color: APPSTYLE.BLACK_COLOR,
                      ),
                    ),
                  ),
                ),
              ),
              15.widthBox,
              OnHoverEffect(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AddProduct.routeName);
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    decoration: BoxDecoration(
                      color: APPSTYLE.PRIMARY_COLOR_DARK,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      "Ajouter",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        height: 1.5,
                        color: APPSTYLE.WHITE_COLOR,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  //

  Widget modelFilter(String title, IconData icons, {bool? filter}) {
    return InkWell(
      onTap: () {
        setState(() {
          if (filter == null || filter == true) {
            filter = false;
          }
          filter = null;
          // filter = filter == null || filter == false ? true : false;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          color: APPSTYLE.WHITE_COLOR,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: APPSTYLE.DESABLE_COLOR, width: 1),
        ),
        child: Row(
          children: [
            Icon(icons),
            10.widthBox,
            Text(
              title,
              style: APPSTYLE.body1,
            ),
            10.widthBox,
            Icon(
              filter == true ? Icons.arrow_drop_down : Icons.arrow_upward,
            ),
          ],
        ),
      ),
    );
  }
}

Widget tabHeaderDetailModel({
  String? title,
}) {
  return Text(
    title!,
    maxLines: 1,
    style: GoogleFonts.montserrat(
      fontWeight: FontWeight.bold,
      fontSize: 12,
    ),
  );
}

Widget productModel({
  String? title,
}) {
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
