import 'package:cobiz/controller/bloc/bloc.dart';
import 'package:cobiz/controller/bloc/event.dart';
import 'package:cobiz/controller/bloc/state.dart';
import 'package:cobiz/services/shared/utils/pop_pup_model.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

bool? isEditEntreprise;

class AddEmploye extends StatefulWidget {
  const AddEmploye({super.key});

  @override
  State<AddEmploye> createState() => _AddEmployeState();
}

class _AddEmployeState extends State<AddEmploye>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  AppBloc? bloc;
  @override
  void initState() {
    bloc = AppBloc();
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return PoppupModel(
      child: BlocBuilder<AppBloc, AppState>(
          bloc: bloc,
          builder: (context, state) {
            int indexTab = 0;
            if (state is SUCCESS) indexTab = state.value;

            return Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: List.generate(
                        4,
                        (index) => InkWell(
                          onTap: () {
                            _tabController!.animateTo(
                              index,
                            );
                            bloc!.add(USERCHANGEMENU(index));
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            margin: const EdgeInsets.only(right: 10),
                            height: 10,
                            width: indexTab == index ? 15 : 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: indexTab == index
                                  ? indexTab == 3
                                      ? APPSTYLE.PRIMARY_COLOR_LIGH
                                      : APPSTYLE.BLACK_COLOR
                                  : APPSTYLE.DESABLE_COLOR,
                            ),
                          ),
                        ),
                      ),
                    ),
                    10.heightBox,
                    Expanded(
                        child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: const [
                        _AddSetpOne(),
                        _AddSetptwo(),
                        _AddSetpthree(),
                        _AddSetpPermision(),
                      ],
                    )),
                    25.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: APPSTYLE.DESABLE_COLOR,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    if (indexTab > 0) {
                                      _tabController!.animateTo(
                                        --indexTab,
                                      );
                                      bloc!.add(
                                        USERCHANGEMENU(_tabController!.index),
                                      );
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 10,
                                        bottom: 10,
                                        top: 10),
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: indexTab > 0
                                          ? APPSTYLE.BLACK_COLOR
                                          : Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ),
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 500),
                                margin: const EdgeInsets.only(left: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: APPSTYLE.DESABLE_COLOR,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    if (indexTab < 4) {
                                      _tabController!.animateTo(
                                        ++indexTab,
                                      );
                                      bloc!.add(USERCHANGEMENU(
                                          _tabController!.index));
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: indexTab < 4
                                          ? APPSTYLE.BLACK_COLOR
                                          : Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        150.widthBox,
                        Expanded(
                          child: CustomButton(
                            onTap: () {
                              // where the go forward function will be made
                            },
                            title: AppLocalizations.of(context)!.save,
                            backgroundColor: APPSTYLE.BLACK_COLOR,
                            textColor: APPSTYLE.WHITE_COLOR,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class _AddSetpOne extends StatelessWidget {
  const _AddSetpOne();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.employeeFirstName,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: AppLocalizations.of(context)!.hintFirstName,
            ),
            15.heightBox,
            Text(
              AppLocalizations.of(context)!.employeeLastName,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: AppLocalizations.of(context)!.hintLastname,
            ),
            15.heightBox,
            Text(
              AppLocalizations.of(context)!.employeePhoneNumber,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: TextFormField(
                inputFormatters: [
                  MaskTextInputFormatter(
                    mask: '### ### ###',
                    filter: {
                      "#": RegExp(r'\d'),
                    },
                  )
                ],
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(16.0),
                  hintText: AppLocalizations.of(context)!.hintPhonenumber,
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                  prefixIcon: CountryCodePicker(
                    boxDecoration: BoxDecoration(
                      color: APPSTYLE.WHITE_COLOR,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    initialSelection: 'CD',
                    favorite: const ["+243", 'CD'],
                    showCountryOnly: true,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                    flagWidth: 20.0,
                    showFlagDialog: true,
                    showFlag: true,
                    showDropDownButton: true,
                    searchStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    dialogTextStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    textStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    searchDecoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(16.0),
                      hintText: AppLocalizations.of(context)!.findCountry,
                      hintStyle: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  errorStyle: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),
            15.heightBox,
            Text(
              AppLocalizations.of(context)!.adresseMail,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: AppLocalizations.of(context)!.hintEmail,
            ),
          ],
        ),
      ),
    );
  }
}

class _AddSetptwo extends StatelessWidget {
  const _AddSetptwo();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.country,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: AppLocalizations.of(context)!.hintCountry,
            ),
            15.heightBox,
            Text(
              AppLocalizations.of(context)!.cityUser,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: AppLocalizations.of(context)!.hintCity,
            ),
            15.heightBox,
            Text(
              AppLocalizations.of(context)!.township,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: AppLocalizations.of(context)!.hintTownship,
            ),
            15.heightBox,
            Text(
              AppLocalizations.of(context)!.avenu,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: AppLocalizations.of(context)!.hintAvenu,
            ),
            15.heightBox,
            Text(
              AppLocalizations.of(context)!.numberHouse,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: AppLocalizations.of(context)!.hintNumberHouse,
            ),
          ],
        ),
      ),
    );
  }
}

class _AddSetpthree extends StatelessWidget {
  const _AddSetpthree();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.username,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 12,
                  color: APPSTYLE.SECOND_TEXT_COLOR,
                ),
              ),
            ),
            8.heightBox,
            FormText(
              hint: AppLocalizations.of(context)!.hintUsername,
            ),
            15.heightBox,
            Text(
              AppLocalizations.of(context)!.password,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormPassWordTextWithGenerate(
              hint: AppLocalizations.of(context)!.hintEnterPassword,
            ),
            15.heightBox,
            Text(
              AppLocalizations.of(context)!.headerTabEmployeRole,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            15.heightBox,
            Text(
              AppLocalizations.of(context)!.descripritionRole,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 12,
                  color: APPSTYLE.SECOND_TEXT_COLOR,
                ),
              ),
            ),
            8.heightBox,
            FormText(
              hint: AppLocalizations.of(context)!.hintEnterDesignationRole,
            ),
            8.heightBox,
          ],
        ),
      ),
    );
  }
}

class _AddSetpPermision extends StatefulWidget {
  const _AddSetpPermision();

  @override
  State<_AddSetpPermision> createState() => _AddSetpPermisionState();
}

class _AddSetpPermisionState extends State<_AddSetpPermision> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Permision",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 12,
                  color: APPSTYLE.SECOND_TEXT_COLOR,
                ),
              ),
            ),
            20.heightBox,
            Text(
              "Produit",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 12,
                  color: APPSTYLE.SECOND_TEXT_COLOR,
                ),
              ),
            ),
            8.heightBox,
            Wrap(
              children: List.generate(
                2,
                (index) => const _CheckboxListTile(),
              ),
            ),
            8.heightBox,
            Text(
              AppLocalizations.of(context)!.descripritionRole,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 12,
                  color: APPSTYLE.SECOND_TEXT_COLOR,
                ),
              ),
            ),
            8.heightBox,
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  width: 1,
                  color: APPSTYLE.BORDER_COLOR,
                ),
              ),
              child: TextField(
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: Colors.black,
                  height: 1.5,
                ),
                maxLines: 3,
                maxLength: 50,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  hintText: AppLocalizations.of(context)!.hintDescriptionRole,
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CheckboxListTile extends StatefulWidget {
  const _CheckboxListTile();

  @override
  State<_CheckboxListTile> createState() => _CheckboxListTileState();
}

class _CheckboxListTileState extends State<_CheckboxListTile> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  List<String> permision = [
    "Ajouter",
    "Modifier",
    "Supprimer",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CheckboxListTile(
            checkColor: APPSTYLE.WHITE_COLOR,
            activeColor: APPSTYLE.BLACK_COLOR,
            subtitle: const Text("Building Layouts"),
            title: Text(permision[0]),
            tileColor: APPSTYLE.SECOND_TEXT_COLOR,
            value: isChecked1,
            onChanged: (bool? value) {
              setState(() {
                isChecked1 = value!;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
        15.widthBox,
        Expanded(
          child: CheckboxListTile(
            checkColor: APPSTYLE.WHITE_COLOR,
            activeColor: APPSTYLE.BLACK_COLOR,
            subtitle: const Text("Building Layouts"),
            title: Text(permision[1]),
            tileColor: APPSTYLE.SECOND_TEXT_COLOR,
            value: isChecked2,
            onChanged: (bool? value) {
              setState(() {
                isChecked2 = value!;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
      ],
    );
  }
}
