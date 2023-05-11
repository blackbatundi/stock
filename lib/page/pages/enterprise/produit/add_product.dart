import 'package:cobiz/controller/bloc/bloc.dart';
import 'package:cobiz/controller/bloc/state.dart';
import 'package:cobiz/page/page_controller/product/product_controller.dart';
import 'package:cobiz/page/pages/enterprise/produit/popup_add_product.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../services/shared/utils/utils_function.dart';

class AddProduct extends StatefulWidget {
  static String routeName = "/addproduct";
  const AddProduct({
    super.key,
  });

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  List<ProductController> controllers = [];
  ProductController productController = ProductController();

  AppBloc bloc = AppBloc();

  @override
  void dispose() {
    controllers.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AppBloc, AppState>(
        bloc: bloc,
        listener: (context, state) {
          if (state is SUCCESS) {
            Navigator.pop(context);
          }
        },
        child: BlocBuilder<AppBloc, AppState>(
            bloc: bloc,
            builder: (context, state) {
              return IgnorePointer(
                ignoring: state is LOADING,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    30.heightBox,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 170),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            borderRadius: BorderRadius.circular(10),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.arrow_back_ios,
                              ),
                            ),
                          ),
                          15.widthBox,
                          Expanded(
                            child: Text(
                              "Produit/service",
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    20.heightBox,
                    const _Indicators(),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 170),
                        child: Column(
                          children: [
                            ...List.generate(
                              controllers.length,
                              (index) =>
                                  addedItemModel(controllers[index], index),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 20.0,
                              ),
                              child: InkWell(
                                onTap: () async {
                                  await customershowDialog(
                                    context,
                                    child: const PopupAddPorductInfo(),
                                  ).then((value) {
                                    if (value != null) {
                                      setState(() {
                                        controllers.add(value);
                                      });
                                    }
                                  });
                                },
                                child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: const Radius.circular(10),
                                  padding: const EdgeInsets.all(6),
                                  color: APPSTYLE.SECOND_TEXT_COLOR,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Iconsax.add,
                                            color: APPSTYLE.SECOND_TEXT_COLOR,
                                          ),
                                          10.widthBox,
                                          Text(
                                            "Ajouter un produit",
                                            style: GoogleFonts.montserrat(
                                              color: APPSTYLE.SECOND_TEXT_COLOR,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: APPSTYLE.WHITE_COLOR,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
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
                              productController.submit(bloc, controllers);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.center,
                              width: 150,
                              decoration: BoxDecoration(
                                color: APPSTYLE.PRIMARY_COLOR_LIGH,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: state is LOADING
                                  ? SizedBox(
                                      height: 15,
                                      width: 15,
                                      child: CircularProgressIndicator(
                                        color: APPSTYLE.WHITE_COLOR,
                                      ),
                                    )
                                  : Text(
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
                  ],
                ),
              );
            }),
      ),
    );
  }

  Widget addedItemModel(ProductController productCtrl, int index) {
    Widget spacer = 15.widthBox;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: OnHoverEffect(
        child: Container(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 15,
            top: 15,
          ),
          decoration: BoxDecoration(
            color: APPSTYLE.WHITE_COLOR,
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: APPSTYLE.SHADOW_COLOR,
                offset: const Offset(0, 5),
                blurRadius: 5,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: productModel(
                  title: productCtrl.designation!.text,
                ),
              ),
              spacer,
              Expanded(
                flex: 2,
                child: productModel(title: productCtrl.description!.text),
              ),
              spacer,
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 8,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: productCtrl.productType == "Service"
                        ? APPSTYLE.GREEN.withOpacity(.15)
                        : APPSTYLE.PRIMARY_COLOR_DARK.withOpacity(.3),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    productCtrl.productType!,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        color: productCtrl.productType == "Service"
                            ? APPSTYLE.GREEN
                            : APPSTYLE.PRIMARY_COLOR_DARK),
                  ),
                ),
              ),
              spacer,
              Expanded(
                flex: 1,
                child: productModel(title: productCtrl.quantite!.text),
              ),
              spacer,
              Expanded(
                flex: 1,
                child: Text(
                  "${productCtrl.prixachat!.text} USD",
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
                child: Text(
                  "${productCtrl.prixinitial!.text} USD",
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
                child: Text(
                  "${productCtrl.prixfinal!.text} USD",
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
                child: InkWell(
                  onTap: () {
                    setState(() {
                      controllers.removeAt(index);
                    });
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: APPSTYLE.RED_COLOR.withOpacity(.1),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Supprimer",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.montserrat(
                        color: APPSTYLE.RED_COLOR,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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
}

class _Indicators extends StatelessWidget {
  const _Indicators({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double space = 15;
    return Padding(
      padding: const EdgeInsets.only(
        left: 170,
        right: 170,
        bottom: 15,
        top: 15,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(title: "Designation"),
          ),
          space.widthBox,
          Expanded(
            flex: 2,
            child: tabHeaderDetailModel(title: "Description"),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(title: "Type"),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(title: "Qté"),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(title: "P.A"),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(title: "P.V initial"),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(title: "P.V final"),
          ),
          space.widthBox,
          Expanded(
            flex: 1,
            child: tabHeaderDetailModel(title: "Action"),
          ),
        ],
      ),
    );
  }

  Widget tabHeaderDetailModel({
    String? title,
    TextAlign? textAlign,
  }) {
    return Text(
      title!,
      maxLines: 1,
      textAlign: textAlign,
      style: GoogleFonts.montserrat(
        fontSize: 12,
      ),
    );
  }
}

// class _AddImage extends StatefulWidget {
//   final AppBloc bloc;
//   final ProductController productController;
//   const _AddImage(
//       {Key? key, required this.bloc, required this.productController})
//       : super(key: key);

//   @override
//   State<_AddImage> createState() => _AddImageState();
// }

// class _AddImageState extends State<_AddImage> {
//   File? image;
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<AppBloc, AppState>(
//       bloc: widget.bloc,
//       builder: (context, state) {
//         if (state is SUCCESS) {
//           widget.productController.image = state.value;
//           image = state.value;
//         }
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             image != null
//                 ? Stack(
//                     children: [
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(4),
//                         child: SizedBox(
//                           height: 700,
//                           width: 400,
//                           child: Image.file(
//                             image!,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                         right: 10,
//                         top: 10,
//                         child: InkWell(
//                           onTap: () {
//                             widget.bloc.add(
//                               REMOVEONEIMAGE(),
//                             );
//                           },
//                           child: Container(
//                             padding: const EdgeInsets.all(5),
//                             decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: APPSTYLE.WHITE_COLOR.withOpacity(.5),
//                             ),
//                             child: const Icon(
//                               Icons.close,
//                               size: 18,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   )
//                 : InkWell(
//                     onTap: () {
//                       widget.bloc.add(
//                         PICKIMAGE(),
//                       );
//                     },
//                     child: Container(
//                       height: 700,
//                       width: 450,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(4),
//                         color: APPSTYLE.DESABLE_COLOR,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Iconsax.image,
//                             size: 45,
//                             color: APPSTYLE.SECOND_TEXT_COLOR,
//                           ),
//                           10.heightBox,
//                           Text(
//                             AppLocalizations.of(context)!.addimageproducts,
//                             textAlign: TextAlign.center,
//                             style: APPSTYLE.body1,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//           ],
//         );
//       },
//     );
//   }
// }

