import 'package:cobiz/start/shared/style.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as mat;

class LargePoppupModel extends StatefulWidget {
  final Widget? child;
  final Color? backgroudColor;
  const LargePoppupModel({super.key, this.child, this.backgroudColor});

  @override
  State<LargePoppupModel> createState() => _LargePoppupModelState();
}

class _LargePoppupModelState extends State<LargePoppupModel> {
  bool hasFinished = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return mat.Material(
      color: APPSTYLE.SCAFFOLD_BACGROUND_COLOR_LIGH.withOpacity(.87),
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height - 150,
          width: MediaQuery.of(context).size.width - 150,
          decoration: BoxDecoration(
            border: Border.all(
              color: APPSTYLE.ON_CONTAINER_COLOR,
            ),
            color:
                widget.backgroudColor ?? APPSTYLE.SCAFFOLD_BACGROUND_COLOR_LIGH,
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: APPSTYLE.SHADOW_COLOR,
                offset: const Offset(-3, 7),
                blurRadius: 7,
              ),
              BoxShadow(
                color: APPSTYLE.SHADOW_COLOR.withOpacity(.3),
                offset: const Offset(3, -7),
                blurRadius: 7,
              ),
            ],
          ),
          child: widget.child ?? const SizedBox.shrink(),
        ),
      ),
    );
  }
}
