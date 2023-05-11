import 'package:cobiz/page/page_controller/enterprise/enterprise_controller.dart';
import 'package:cobiz/services/shared/utils/pop_pup_model.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:velocity_x/velocity_x.dart';

class EditUserProfile extends StatefulWidget {
  const EditUserProfile({super.key});

  @override
  State<EditUserProfile> createState() => _EditUserProfileState();
}

class _EditUserProfileState extends State<EditUserProfile> {
  EntrepiseController entrepiseController = EntrepiseController();

  @override
  Widget build(BuildContext context) {
    return PoppupModel(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "nom",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                    ),
                  ),
                  8.heightBox,
                  const FormText(
                    hint: "Nom complet",
                  ),
                  15.heightBox,
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
                      decoration: InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(16.0),
                        hintText: 'Numéro de télephone',
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: 12.0,
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
                    "Pays",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                    ),
                  ),
                  8.heightBox,
                  const FormText(
                    hint: "Congo-kinshasa",
                  ),
                  15.heightBox,
                  Text(
                    "Ville",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                    ),
                  ),
                  8.heightBox,
                  const FormText(
                    hint: "Goma",
                  ),
                  15.heightBox,
                  Text(
                    "Commune",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                    ),
                  ),
                  8.heightBox,
                  const FormText(
                    hint: "de Goma",
                  ),
                  15.heightBox,
                  Text(
                    "Avenue",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                    ),
                  ),
                  8.heightBox,
                  const FormText(
                    hint: "du lac",
                  ),
                  15.heightBox,
                  Text(
                    "Numero",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                    ),
                  ),
                  8.heightBox,
                  const FormText(
                    hint: "053",
                  ),
                  15.heightBox,
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                          text: 'En cliquant sur ',
                          style: APPSTYLE.header2,
                          children: [
                            TextSpan(
                              text: "Enregistrer ",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            TextSpan(
                              text: "vous accepterez",
                              style: APPSTYLE.header2,
                            ),
                            TextSpan(
                              text: " les termes et conditions",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: APPSTYLE.PRIMARY_COLOR_LIGH,
                              ),
                            ),
                            TextSpan(
                              text: " d'utilisation de cette application",
                              style: APPSTYLE.header2,
                            ),
                          ]),
                    ),
                  ),
                  15.heightBox,
                  CustomButton(
                    onTap: () {},
                    title: "enregistre",
                    backgroundColor: APPSTYLE.PRIMARY_COLOR_LIGH,
                    textColor: APPSTYLE.WHITE_COLOR,
                    // onTap: submit,
                    // state: state,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
