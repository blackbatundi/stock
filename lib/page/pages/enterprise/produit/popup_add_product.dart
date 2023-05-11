import 'package:cobiz/page/page_controller/product/product_controller.dart';
import 'package:cobiz/provider/product/model.dart';
import 'package:cobiz/services/shared/utils/pop_pup_model.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PopupAddPorductInfo extends StatefulWidget {
  const PopupAddPorductInfo({super.key});

  @override
  State<PopupAddPorductInfo> createState() => _PopupAddPorductInfoState();
}

class _PopupAddPorductInfoState extends State<PopupAddPorductInfo> {
  ProductController productController = ProductController();
  bool hasTappedCar = false;
  @override
  Widget build(BuildContext context) {
    return PoppupModel(
      child: Expanded(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 30,
          ),
          child: SizedBox(
            width: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        "Important",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Type item",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                            ),
                          ),
                          4.heightBox,
                          Container(
                            width: 300,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: APPSTYLE.DESABLE_COLOR,
                            ),
                            child: DropdownButton<String>(
                              value: productController.productType,
                              borderRadius: BorderRadius.circular(4),
                              icon: const Icon(
                                Icons.arrow_drop_down,
                                size: 20,
                              ),
                              underline: Container(),
                              isDense: true,
                              items: List.generate(
                                productController.dropDownTypreValues.length,
                                (index) => productController
                                    .dropDownTypreValues[index],
                              ).map(
                                (String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: SizedBox(
                                      width: 250,
                                      child: Text(
                                        items,
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ).toList(),
                              onChanged: (String? newValue) {
                                setState(
                                  () {
                                    productController.productType = newValue;
                                  },
                                );
                              },
                            ),
                          ),
                          15.heightBox,
                          AddFormText(
                            title: "Designation",
                            controller: productController.designation,
                          ),
                          15.heightBox,
                          Text(
                            "Description",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                            ),
                          ),
                          4.heightBox,
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: APPSTYLE.DESABLE_COLOR,
                            ),
                            child: TextField(
                              maxLines: 3,
                              maxLength: 125,
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                              controller: productController.description,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                hintStyle: GoogleFonts.montserrat(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          if (productController.productType == "Produit")
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                15.heightBox,
                                Text(
                                  "Etat produit",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                  ),
                                ),
                                4.heightBox,
                                Container(
                                  width: 300,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: APPSTYLE.DESABLE_COLOR,
                                  ),
                                  child: DropdownButton<String>(
                                    value: productController.isNew,
                                    borderRadius: BorderRadius.circular(4),
                                    icon: const Icon(
                                      Icons.arrow_drop_down,
                                      size: 20,
                                    ),
                                    underline: Container(),
                                    isDense: true,
                                    items: List.generate(
                                      productController.isNewValue.length,
                                      (index) =>
                                          productController.isNewValue[index],
                                    ).map(
                                      (String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: SizedBox(
                                            width: 250,
                                            child: Text(
                                              items,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).toList(),
                                    onChanged: (String? newValue) {
                                      setState(
                                        () {
                                          productController.isNew = newValue;
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    color: APPSTYLE.BORDER_COLOR,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        "Quantite",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          if (productController.productType == "Produit")
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: AddFormText(
                                      title: "Valeur",
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp(r'[0-9]+[.]{0,1}[0-9]*')),
                                      ],
                                      controller: productController.quantite,
                                    ),
                                  ),
                                  15.widthBox,
                                ],
                              ),
                            ),
                          Expanded(
                            child: AddFormText(
                              title: "Unite",
                              controller: productController.unite,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    color: APPSTYLE.BORDER_COLOR,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        "Prix",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          if (productController.productType == "Produit")
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: AddFormText(
                                      title: "P.A",
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp(r'[0-9]+[.]{0,1}[0-9]*')),
                                      ],
                                      controller: productController.prixachat,
                                    ),
                                  ),
                                  15.widthBox,
                                ],
                              ),
                            ),
                          Expanded(
                            child: AddFormText(
                              title: "P.V init.",
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]+[.]{0,1}[0-9]*')),
                              ],
                              controller: productController.prixinitial,
                            ),
                          ),
                          15.widthBox,
                          Expanded(
                            child: AddFormText(
                              title: "P.V final",
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]+[.]{0,1}[0-9]*'),
                                ),
                              ],
                              controller: productController.prixfinal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (productController.productType == "Produit")
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Divider(
                          color: APPSTYLE.BORDER_COLOR,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 150,
                            child: Text(
                              "Couleurs",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            child: colours(),
                          ),
                        ],
                      ),
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    color: APPSTYLE.BORDER_COLOR,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        "Autres",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: caracteristqueModel(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    color: APPSTYLE.BORDER_COLOR,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                productController = ProductController();
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: APPSTYLE.DESABLE_COLOR,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                "Effacer",
                                style: APPSTYLE.body1,
                              ),
                            ),
                          ),
                        ),
                        15.widthBox,
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              // this will have first the validator before adding;
                              Navigator.pop(context, productController);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: APPSTYLE.BLACK_COLOR,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                "Ajouter à la liste",
                                style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  height: 1.5,
                                  fontWeight: FontWeight.bold,
                                  color: APPSTYLE.WHITE_COLOR,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget caracteristqueModel() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        Wrap(
          children: [
            if (productController.caracteristique.isNotEmpty)
              Wrap(
                children: List.generate(
                  productController.caracteristique.length,
                  (index) => addOtherCarModel(
                    car: productController.caracteristique[index],
                  ),
                ),
              ),
            if (hasTappedCar == true) addOtherCarForm(),
            Wrap(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: APPSTYLE.DESABLE_COLOR,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        hasTappedCar = true;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: APPSTYLE.BLACK_COLOR,
                          ),
                          child: const Icon(
                            Iconsax.add,
                            size: 13,
                            color: Colors.white,
                          ),
                        ),
                        10.widthBox,
                        Text(
                          AppLocalizations.of(context)!.addCharacter,
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget addOtherCarModel({
    String? car,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      margin: const EdgeInsets.only(right: 10, bottom: 10),
      decoration: BoxDecoration(
        color: APPSTYLE.ON_CONTAINER_COLOR,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "$car",
            style: GoogleFonts.montserrat(
              fontSize: 12,
            ),
          ),
          5.widthBox,
          InkWell(
            onTap: () {
              setState(() {
                productController.caracteristique.removeWhere((c) => c == car);
              });
            },
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: APPSTYLE.RED_COLOR,
              ),
              child: Icon(
                Icons.close,
                color: APPSTYLE.WHITE_COLOR,
                size: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget addOtherCarForm() {
    return Container(
      width: 130,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10, right: 15),
      decoration: BoxDecoration(
        color: APPSTYLE.DESABLE_COLOR,
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextField(
        autofocus: true,
        style: GoogleFonts.montserrat(
          fontSize: 12,
        ),
        onSubmitted: (String value) {
          setState(() {
            hasTappedCar = false;
            productController.caracteristique.add(value);
          });
        },
        decoration: const InputDecoration(
          isDense: true,
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget colours() {
    List<String> colourName = [
      AppLocalizations.of(context)!.colorRed,
      AppLocalizations.of(context)!.colorWhite,
      AppLocalizations.of(context)!.colorGreen,
      AppLocalizations.of(context)!.colorOrange,
      AppLocalizations.of(context)!.colorBlue,
      AppLocalizations.of(context)!.colorBlack,
      AppLocalizations.of(context)!.colorYellow,
      AppLocalizations.of(context)!.colorBrown,
      AppLocalizations.of(context)!.colorPink,
    ];

    List<Color> colors = [
      Colors.red,
      Colors.white,
      Colors.green,
      Colors.deepOrange,
      Colors.blue,
      Colors.black,
      Colors.yellow,
      Colors.amber,
      Colors.purple,
    ];

    return Wrap(
      spacing: 10,
      children: List.generate(colourName.length, (index) {
        ValueNotifier<bool> isSelected = ValueNotifier(false);

        List<ProductColor> test = productController.selectedColor
            .where((
              c,
            ) =>
                c.color?.value == colors[index].value)
            .toList();
        if (test.isNotEmpty) {
          isSelected.value = true;
        }

        return ValueListenableBuilder(
            valueListenable: isSelected,
            builder: (context, bool value, child) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        List<ProductColor> test = productController
                            .selectedColor
                            .where((c) => c.color?.value == colors[index].value)
                            .toList();
                        if (test.isEmpty) {
                          productController.selectedColor.add(
                            ProductColor(
                              name: colourName[index],
                              color: colors[index],
                            ),
                          );
                          isSelected.value = true;
                          return;
                        }
                        productController.selectedColor.removeWhere(
                            (c) => c.color?.value == colors[index].value);
                        isSelected.value = false;
                      });
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 67.5,
                      margin: const EdgeInsets.only(bottom: 10),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: value
                            ? APPSTYLE.BLACK_COLOR
                            : colors[index].withOpacity(.3),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: colors[index] == Colors.white
                              ? APPSTYLE.BORDER_COLOR
                              : Colors.transparent,
                        ),
                      ),
                      child: Text(
                        colourName[index],
                        style: GoogleFonts.montserrat(
                          fontSize: 10,
                          color: value
                              ? APPSTYLE.WHITE_COLOR
                              : APPSTYLE.BLACK_COLOR,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            });
      }),
    );
  }
}

class AddFormText extends StatelessWidget {
  final String? hint;
  final String? title;
  final TextEditingController? controller;
  final double? width;
  final bool? isHiden;

  final List<TextInputFormatter>? inputFormatters;
  const AddFormText({
    super.key,
    this.hint,
    this.controller,
    this.width,
    this.isHiden,
    this.inputFormatters,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: GoogleFonts.montserrat(
            fontSize: 12,
          ),
        ),
        4.heightBox,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: APPSTYLE.DESABLE_COLOR,
          ),
          child: TextField(
            style: GoogleFonts.montserrat(
              fontSize: 12,
              color: Colors.black,
            ),
            inputFormatters: inputFormatters,
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
        ),
      ],
    );
  }
}
