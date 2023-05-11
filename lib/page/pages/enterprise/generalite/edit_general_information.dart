import 'package:cobiz/controller/bloc/bloc.dart';
import 'package:cobiz/controller/bloc/event.dart';
import 'package:cobiz/controller/bloc/state.dart';
import 'package:cobiz/page/page_controller/common/address.dart';
import 'package:cobiz/page/page_controller/common/bank.dart';
import 'package:cobiz/page/page_controller/common/contact.dart';
import 'package:cobiz/provider/enterprise/model.dart';
import 'package:cobiz/services/shared/utils/pop_pup_model.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../page_controller/enterprise/enterprise_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

bool? isEditEntreprise;

class EditGeneralInformation extends StatefulWidget {
  final EnterpriseModel? enterprise;
  const EditGeneralInformation({super.key, this.enterprise});

  @override
  State<EditGeneralInformation> createState() => _EditGeneralInformationState();
}

class _EditGeneralInformationState extends State<EditGeneralInformation>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  AppBloc? bloc;
  AppBloc? saveBloc;
  late EntrepiseController entrepiseController;
  late AddressController addressController;
  late ContactController contactController;
  late BankController bankController;

  bool hasGotInfo = false;
  @override
  void initState() {
    bloc = AppBloc();
    entrepiseController =
        EntrepiseController(enterprise: widget.enterprise?.enterpriseInfo);
    addressController = AddressController(address: widget.enterprise?.addres);
    contactController = ContactController(
        contact: widget.enterprise?.contact, phone: widget.enterprise?.phone);
    bankController = BankController(bank: widget.enterprise?.bank);
    saveBloc = AppBloc();
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PoppupModel(
      child: BlocListener<AppBloc, AppState>(
        bloc: saveBloc,
        listener: (context, savingSate) {
          if (savingSate is SUCCESS) {
            CustormInfoBar(
              message: savingSate.value,
              title: "Enregistre avec succes",
            );
          } else if (savingSate is ERROR) {
            CustormInfoBar(
              title: "Erreur",
              message: savingSate.dueTo,
            );
          }
        },
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: List.generate(
                          3,
                          (index) => InkWell(
                            onTap: () {
                              if (entrepiseController.id != null) {
                                _tabController!.animateTo(
                                  index,
                                );
                                bloc!.add(USERCHANGEMENU(index));
                              }
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              margin: const EdgeInsets.only(right: 10),
                              height: 10,
                              width: indexTab == index ? 15 : 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: indexTab == index
                                    ? APPSTYLE.BLACK_COLOR
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
                          children: [
                            _EntrepiseInformationSetpOne(
                              entrepiseController: entrepiseController,
                            ),
                            _EntrepiseInformationSetptwo(
                              addressController: addressController,
                            ),
                            _EntrepiseInformationSetpthree(
                              contactController: contactController,
                              bankController: bankController,
                            ),
                          ],
                        ),
                      ),
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
                                      if (indexTab < 2 &&
                                          entrepiseController.id != null) {
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
                                        color: indexTab < 2 &&
                                                entrepiseController.id != null
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
                            child: BlocBuilder<AppBloc, AppState>(
                                bloc: saveBloc,
                                builder: (context, savingSate) {
                                  return CustomButton(
                                    onTap: () {
                                      goForward(indexTab);
                                    },
                                    state: savingSate,
                                    title: "Modifier",
                                    backgroundColor: APPSTYLE.BLACK_COLOR,
                                    textColor: APPSTYLE.WHITE_COLOR,
                                  );
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  void goForward(int indexTab) {
    switch (indexTab) {
      case 0:
        entrepiseController.submit(saveBloc!);
        break;
      case 1:
        entrepiseController.insertOrEditAddress(
            bloc: saveBloc!, address: addressController);
        break;
      case 2:
        entrepiseController.insertOrUpadateContactAndBank(
          bloc: saveBloc!,
          contact: contactController,
          bank: bankController,
        );
        break;
    }
  }
}

class _EntrepiseInformationSetpOne extends StatelessWidget {
  final EntrepiseController entrepiseController;
  const _EntrepiseInformationSetpOne({required this.entrepiseController});

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
              AppLocalizations.of(context)!.socialReason,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "Entrez le nom",
              controller: entrepiseController.designation,
            ),
            15.heightBox,
            Text(
              AppLocalizations.of(context)!.description,
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              width: MediaQuery.of(context).size.width,
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
                controller: entrepiseController.description,
                maxLines: 3,
                maxLength: 125,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  hintText: "Description de l'entreprise",
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            15.heightBox,
            Text(
              "RCCM",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "Rccm",
              controller: entrepiseController.rccm,
            ),
            15.heightBox,
            Text(
              "impot",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "Numero impot",
              controller: entrepiseController.impot,
            ),
            15.heightBox,
            Text(
              "IDNAT",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "identification nationale",
              controller: entrepiseController.idnat,
            ),
            30.heightBox,
            Text(
              "Code",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint:
                  "Entrez le code de votre entreprise, pour des recu et autre",
              controller: entrepiseController.code,
            ),
          ],
        ),
      ),
    );
  }
}

class _EntrepiseInformationSetptwo extends StatelessWidget {
  final AddressController addressController;
  const _EntrepiseInformationSetptwo({required this.addressController});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pays",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "Congo-kinshasa",
              controller: addressController.country,
            ),
            15.heightBox,
            Text(
              "Province",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "Nord-kivu",
              controller: addressController.city,
            ),
            15.heightBox,
            Text(
              "Ville",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "Goma",
              controller: addressController.town,
            ),
            15.heightBox,
            Text(
              "Commune",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "de Goma",
              controller: addressController.common,
            ),
            15.heightBox,
            Text(
              "Quartier",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "Entrez le quartier",
              controller: addressController.quater,
            ),
            15.heightBox,
            Text(
              "Avenue",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "du lac",
              controller: addressController.street,
            ),
            15.heightBox,
            Text(
              "Numero",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "numero",
              controller: addressController.number,
            ),
          ],
        ),
      ),
    );
  }
}

class _EntrepiseInformationSetpthree extends StatelessWidget {
  final ContactController? contactController;
  final BankController? bankController;
  const _EntrepiseInformationSetpthree(
      {this.contactController, this.bankController});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Numero telephone",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: APPSTYLE.BORDER_COLOR,
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
                controller: contactController!.number,
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(16.0),
                  hintText: 'Numéro de télephone',
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 12.0,
                  ),
                  prefixIcon: CountryCodePicker(
                    onChanged: (CountryCode countryCode) {
                      contactController!.code = countryCode.code!;
                    },
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
                      hintText: 'Rechercher Pays',
                      hintStyle: TextStyle(
                        color: APPSTYLE.SECOND_TEXT_COLOR,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  errorStyle: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            15.heightBox,
            Text(
              "Adresse mail",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "tech@upper-z.com",
              controller: contactController!.email,
            ),
            15.heightBox,
            Text(
              "site Internet",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "www ou http:// ou https",
              controller: contactController!.webSite,
            ),
            15.heightBox,
            Text(
              "Banque",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "Saisissez votre banque",
              controller: bankController!.bankName,
            ),
            15.heightBox,
            Text(
              "Intitule du compte",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "nom du compte",
              controller: bankController!.accounName,
            ),
            15.heightBox,
            Text(
              "SWIFT",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "Swift code votre banque",
              controller: bankController!.swiftCode,
            ),
            15.heightBox,
            Text(
              "numero de compte",
              style: GoogleFonts.montserrat(
                fontSize: 12,
              ),
            ),
            8.heightBox,
            FormText(
              hint: "000000 - 000000",
              controller: bankController!.acountNumber,
            ),
          ],
        ),
      ),
    );
  }
}
