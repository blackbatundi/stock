import 'dart:io';

import 'package:cobiz/services/os_interaction/file_picker.dart';
import 'package:cobiz/services/shared/utils/pop_pup_model.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? image;
  @override
  Widget build(BuildContext context) {
    return PoppupModel(
      child: Expanded(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 60),
            child: Column(
              children: [
                InkWell(
                  onTap: () async {
                    await pickImages(false).then((img) {
                      if (img != null) {
                        setState(() {
                          image = img[0];
                        });
                      }
                    });
                  },
                  child: image != null
                      ? ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: SizedBox(
                            height: 350,
                            width: MediaQuery.of(context).size.width,
                            child: Image.file(
                              image!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : DottedBorder(
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(10),
                          padding: const EdgeInsets.all(6),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: Container(
                              height: 350,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: APPSTYLE.DESABLE_COLOR,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Iconsax.image,
                                    size: 50,
                                  ),
                                  15.heightBox,
                                  Text(
                                    "Ajouter une image",
                                    style: APPSTYLE.body1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                ),
                30.heightBox,
                CustomButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  title: "Appliquer le changement",
                  backgroundColor: APPSTYLE.BLACK_COLOR,
                  textColor: APPSTYLE.WHITE_COLOR,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
