import 'package:cobiz/controller/bloc/state.dart';
import 'package:cobiz/services/shared/utils/utils_function.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show TextInputFormatter;
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Divider(
        color: APPSTYLE.DESABLE_COLOR,
      ),
    );
  }
}

class FormText extends StatelessWidget {
  final String? hint;
  final TextEditingController? controller;
  final double? width;
  final bool? isHiden;

  final List<TextInputFormatter>? inputFormatters;
  const FormText({
    super.key,
    this.hint,
    this.controller,
    this.width,
    this.isHiden,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color:
              isHiden == true ? APPSTYLE.DESABLE_COLOR : APPSTYLE.BORDER_COLOR,
        ),
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
    );
  }
}

class FormPassWordTextWithGenerate extends StatefulWidget {
  final String? hint;
  final TextEditingController? controller;
  const FormPassWordTextWithGenerate({super.key, this.hint, this.controller});

  @override
  State<FormPassWordTextWithGenerate> createState() =>
      _FormPassWordTextWithGenerateState();
}

class _FormPassWordTextWithGenerateState
    extends State<FormPassWordTextWithGenerate> {
  ValueNotifier<bool> isObscure = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: APPSTYLE.BORDER_COLOR,
        ),
      ),
      child: ValueListenableBuilder(
          valueListenable: isObscure,
          builder: (context, bool isObscureText, child) {
            return Row(
              children: [
                Expanded(
                  child: TextField(
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    controller: widget.controller,
                    obscureText: isObscureText,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      hintText: widget.hint,
                      hintStyle: GoogleFonts.montserrat(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                10.widthBox,
                InkWell(
                  onTap: () {
                    isObscure.value = !isObscure.value;
                  },
                  child: Icon(
                    isObscureText ? Iconsax.eye : Iconsax.eye_slash,
                    size: 16,
                  ),
                ),
                10.widthBox,
                InkWell(
                  onTap: () {
                    widget.controller!.text = generatePassWord();
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: APPSTYLE.DESABLE_COLOR,
                    ),
                    child: Text(
                      "Générer",
                      style: APPSTYLE.body2,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

class FormPassWordText extends StatefulWidget {
  final String? hint;
  final TextEditingController? controller;
  const FormPassWordText({super.key, this.hint, this.controller});

  @override
  State<FormPassWordText> createState() => _FormPassWordTextState();
}

class _FormPassWordTextState extends State<FormPassWordText> {
  ValueNotifier<bool> isObscure = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: APPSTYLE.BORDER_COLOR,
        ),
      ),
      child: ValueListenableBuilder(
          valueListenable: isObscure,
          builder: (context, bool isObscureText, child) {
            return Row(
              children: [
                Expanded(
                  child: TextField(
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    controller: widget.controller,
                    obscureText: isObscureText,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      hintText: widget.hint,
                      hintStyle: GoogleFonts.montserrat(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                10.widthBox,
                InkWell(
                  onTap: () {
                    isObscure.value = !isObscure.value;
                  },
                  child: Icon(
                    isObscureText ? Iconsax.eye : Iconsax.eye_slash,
                    size: 16,
                  ),
                ),
              ],
            );
          }),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String? title;
  final Color? textColor;
  final Color? backgroundColor;
  final Function()? onTap;
  final double? width;
  final AppState? state;
  const CustomButton(
      {super.key,
      required this.title,
      this.textColor,
      this.backgroundColor,
      this.onTap,
      this.width,
      this.state});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        width: width,
        duration: const Duration(milliseconds: 200),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            state is LOADING
                ? SizedBox(
                    height: 15,
                    width: 15,
                    child: CircularProgressIndicator(
                      color: APPSTYLE.WHITE_COLOR,
                    ),
                  )
                : Text(
                    "$title",
                    style: GoogleFonts.montserrat(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class OnHoverEffect extends StatefulWidget {
  final Widget child;
  const OnHoverEffect({Key? key, required this.child}) : super(key: key);

  @override
  State<OnHoverEffect> createState() => _OnHoverEffectState();
}

class _OnHoverEffectState extends State<OnHoverEffect> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.01);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
      onEnter: ((event) => onEntered(true)),
      onExit: ((event) => onEntered(false)),
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 300,
        ),
        transform: transform,
        child: widget.child,
      ),
    );
  }

  onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}

class FormTextWithIndication extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final String label;
  final double? width;
  final bool? isHiden;
  final List<TextInputFormatter>? inputFormatters;
  const FormTextWithIndication({
    Key? key,
    this.controller,
    this.hint,
    required this.label,
    this.width,
    this.isHiden,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isHiden == true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.montserrat(
              fontSize: 12,
              color: isHiden == true ? APPSTYLE.DESABLE_COLOR : null,
            ),
          ),
          10.heightBox,
          FormText(
            inputFormatters: inputFormatters,
            hint: hint,
            width: width,
            controller: controller,
            isHiden: isHiden,
          ),
        ],
      ),
    );
  }
}

class CustormInfoBar extends StatelessWidget {
  final String? message;
  final String? title;
  final fluent.InfoBarSeverity? savaty;
  const CustormInfoBar(
      {super.key, required this.message, this.savaty, required this.title});

  @override
  Widget build(BuildContext context) {
    return fluent.InfoBar(
      title: Text(
        title!,
        style: APPSTYLE.body2,
      ),
      content: Text(
        message!,
        style: APPSTYLE.body1,
      ),
      severity: savaty!,
      isLong: false,
    );
  }
}
