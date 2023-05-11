import 'package:cached_network_image/cached_network_image.dart';
import 'package:cobiz/page/pages/enterprise/produit/add_product.dart';
import 'package:cobiz/provider/product/model.dart';
import 'package:cobiz/services/shared/utils/pop_up_model_detail_produit.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../services/data/local/db/query/product_querry.dart';

class DetailProduct extends StatefulWidget {
  final int? productId;
  const DetailProduct({super.key, this.productId});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct>
    with SingleTickerProviderStateMixin {
  ProductQuery productQuery = ProductQuery.singleton;
  PageController? _pageController;
  int i = 0;
  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LargePoppupModel(
      child: StreamBuilder<ProductModel>(
          stream: productQuery.getOnProduct(widget.productId!),
          builder: (context, snapshot) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height - 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: APPSTYLE.SCAFFOLD_BACGROUND_COLOR_LIGH,
                    ),
                    child: StreamBuilder<ProductImage>(
                        stream: productQuery.getProductImage(widget.productId!),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            List<ProductImage> images = [];
                            images.add(snapshot.data!);
                            return Stack(
                              children: [
                                PageView.builder(
                                  controller: _pageController,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: images.length,
                                  itemBuilder: (context, index) => Container(
                                    height: MediaQuery.of(context).size.height -
                                        150,
                                    width:
                                        MediaQuery.of(context).size.width / 1.6,
                                    decoration: BoxDecoration(
                                      color: APPSTYLE.WHITE_COLOR,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                      image: DecorationImage(
                                        image: CachedNetworkImageProvider(
                                            images[index].productImage!.file),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                // Positioned(
                                //   top: 0,
                                //   bottom: 0,
                                //   left: 30,
                                //   right: 30,
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       i > 0
                                //           ? Container(
                                //               decoration: BoxDecoration(
                                //                 shape: BoxShape.circle,
                                //                 color: Colors.black
                                //                     .withOpacity(.3),
                                //               ),
                                //               child: InkWell(
                                //                 onTap: () {
                                //                   setState(() {
                                //                     i--;
                                //                     _pageController!
                                //                         .animateToPage(
                                //                       i,
                                //                       duration: const Duration(
                                //                         milliseconds: 1000,
                                //                       ),
                                //                       curve:
                                //                           Curves.easeInOutSine,
                                //                     );
                                //                   });
                                //                 },
                                //                 child: const Padding(
                                //                   padding: EdgeInsets.only(
                                //                       left: 15,
                                //                       right: 10,
                                //                       bottom: 10,
                                //                       top: 10),
                                //                   child: Icon(
                                //                     Icons.arrow_back_ios,
                                //                     color: Colors.white,
                                //                     size: 15,
                                //                   ),
                                //                 ),
                                //               ),
                                //             )
                                //           : Container(),
                                //       i < 2
                                //           ? Container(
                                //               decoration: BoxDecoration(
                                //                 shape: BoxShape.circle,
                                //                 color: Colors.black
                                //                     .withOpacity(.3),
                                //               ),
                                //               child: InkWell(
                                //                 onTap: () {
                                //                   setState(
                                //                     () {
                                //                       i++;
                                //                       _pageController!
                                //                           .animateToPage(
                                //                         i,
                                //                         duration:
                                //                             const Duration(
                                //                           milliseconds: 1000,
                                //                         ),
                                //                         curve: Curves
                                //                             .easeInOutSine,
                                //                       );
                                //                     },
                                //                   );
                                //                 },
                                //                 child: const Padding(
                                //                   padding: EdgeInsets.all(10),
                                //                   child: Icon(
                                //                     Icons.arrow_forward_ios,
                                //                     color: Colors.white,
                                //                     size: 15,
                                //                   ),
                                //                 ),
                                //               ),
                                //             )
                                //           : Container(),
                                //     ],
                                //   ),
                                // ),
                                Positioned(
                                  bottom: 30,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 15,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Wrap(
                                      spacing: 10,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.center,
                                      children: List.generate(
                                        images.length,
                                        (index) => InkWell(
                                          onTap: () {
                                            setState(() {
                                              i = index;
                                              _pageController!.animateToPage(
                                                i,
                                                duration: const Duration(
                                                  milliseconds: 1000,
                                                ),
                                                curve: Curves.easeInOutSine,
                                              );
                                            });
                                          },
                                          child: AnimatedContainer(
                                            duration: const Duration(
                                              milliseconds: 1000,
                                            ),
                                            height: index == i ? 30 : 20,
                                            width: index == i ? 30 : 20,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  offset: const Offset(0, 2),
                                                  blurRadius: 2,
                                                  color: Colors.grey
                                                      .withOpacity(.3),
                                                ),
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              color: APPSTYLE.DESABLE_COLOR,
                                              image: DecorationImage(
                                                image:
                                                    CachedNetworkImageProvider(
                                                  images[0].productImage!.file,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          } else if (snapshot.hasError) {
                            return const Text("An error occured");
                          } else {
                            return Container();
                          }
                        }),
                  ),
                ),
                SizedBox(
                  width: 380,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(20),
                            child: Icon(
                              Icons.close,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.only(
                              left: 30, right: 30, bottom: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              snapshot.hasData
                                  ? Text(
                                      snapshot.data!.productInfo!.designation,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  : Container(),
                              10.heightBox,
                              Text(
                                "${AppLocalizations.of(context)!.addAt} 12 fevier 2021",
                                style: APPSTYLE.body2,
                              ),
                              25.heightBox,
                              Text(
                                AppLocalizations.of(context)!.price,
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                ),
                              ),
                              10.heightBox,
                              Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        snapshot.hasData
                                            ? Text(
                                                "\$${snapshot.data!.price!.maximun}",
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: APPSTYLE
                                                      .PRIMARY_COLOR_LIGH,
                                                ),
                                              )
                                            : Container(),
                                        10.widthBox,
                                        snapshot.hasData
                                            ? Text(
                                                "\$${snapshot.data!.price!.minimum}",
                                                style: APPSTYLE.body2,
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                  15.widthBox,
                                  snapshot.hasData
                                      ? Text(
                                          "\$${snapshot.data!.price?.purchase}",
                                          style: APPSTYLE.body2,
                                        )
                                      : Container(),
                                ],
                              ),
                              25.heightBox,
                              Text(
                                AppLocalizations.of(context)!.description,
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                ),
                              ),
                              10.heightBox,
                              snapshot.hasData &&
                                      snapshot.data!.productInfo!.description !=
                                          null
                                  ? Text(
                                      snapshot.data!.productInfo!.description!,
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        height: 1.5,
                                        color: APPSTYLE.SECOND_TEXT_COLOR,
                                      ),
                                    )
                                  : Container(),
                              const CustomDivider(),
                              snapshot.hasData &&
                                      snapshot.data!.productInfo!.entrytype ==
                                          "Produit"
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                AppLocalizations.of(context)!
                                                    .productState,
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              snapshot.data!.productInfo!
                                                  .producttype!,
                                              style: APPSTYLE.body2,
                                            ),
                                          ],
                                        ),
                                        25.heightBox,
                                        Row(
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!
                                                  .inStock,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                              ),
                                            ),
                                            10.widthBox,
                                            snapshot.hasData
                                                ? Expanded(
                                                    child: Text(
                                                      "${snapshot.data!.productInfo!.quantity} ${snapshot.data!.productInfo!.unite}",
                                                      textAlign: TextAlign.end,
                                                      style: GoogleFonts
                                                          .montserrat(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  )
                                                : Container(),
                                          ],
                                        ),
                                        25.heightBox,
                                      ],
                                    )
                                  : Container(),
                              Row(
                                children: [
                                  Text(
                                    "Type",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                    ),
                                  ),
                                  10.widthBox,
                                  snapshot.hasData
                                      ? Expanded(
                                          child: Text(
                                            snapshot
                                                .data!.productInfo!.entrytype,
                                            textAlign: TextAlign.end,
                                            style: GoogleFonts.montserrat(
                                              fontSize: 12,
                                            ),
                                          ),
                                        )
                                      : Container(),
                                ],
                              ),
                              snapshot.hasData &&
                                      snapshot.data!.productInfo!.entrytype ==
                                          "Produit"
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        25.heightBox,
                                        Text(
                                          AppLocalizations.of(context)!.color,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 12,
                                          ),
                                        ),
                                        10.heightBox,
                                        Wrap(
                                          spacing: 10,
                                          children: List.generate(
                                            snapshot.data!.colors.length,
                                            (index) => Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 5),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8,
                                                      horizontal: 10),
                                              decoration: BoxDecoration(
                                                color: APPSTYLE
                                                    .SCAFFOLD_BACGROUND_COLOR_LIGH,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Container(
                                                    height: 15,
                                                    width: 15,
                                                    decoration: BoxDecoration(
                                                      color: snapshot.data!
                                                          .colors[index].color,
                                                      shape: BoxShape.circle,
                                                      border: snapshot
                                                                  .data!
                                                                  .colors[index]
                                                                  .name ==
                                                              "Blanche"
                                                          ? Border.all(
                                                              color: APPSTYLE
                                                                  .BORDER_COLOR)
                                                          : null,
                                                    ),
                                                  ),
                                                  5.widthBox,
                                                  Text(
                                                    snapshot.data!.colors[index]
                                                        .name!,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                      fontSize: 10,
                                                      color:
                                                          APPSTYLE.BLACK_COLOR,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  : Container(),
                              25.heightBox,
                              Text(
                                AppLocalizations.of(context)!
                                    .othercharacteristic,
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                ),
                              ),
                              10.heightBox,
                              snapshot.hasData
                                  ? Wrap(
                                      spacing: 10,
                                      children: List.generate(
                                        snapshot.data!.caracteristics.length,
                                        (index) => Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 10),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 10),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            color: APPSTYLE
                                                .SCAFFOLD_BACGROUND_COLOR_LIGH,
                                          ),
                                          child: Text(
                                            snapshot
                                                .data!.caracteristics[index],
                                            style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                                color: APPSTYLE.BLACK_COLOR),
                                          ),
                                        ),
                                      ),
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 30),
                        child: CustomButton(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AddProduct.routeName,
                              arguments: {
                                "tag": "edit",
                                "value": snapshot.data
                              },
                            );
                          },
                          title: AppLocalizations.of(context)!.editProduct,
                          textColor: APPSTYLE.WHITE_COLOR,
                          backgroundColor: APPSTYLE.BLACK_COLOR,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
