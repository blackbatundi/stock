import 'package:cobiz/start/shared/style.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as mat;

class PoppupModel extends StatefulWidget {
  final Widget? child;
  const PoppupModel({super.key, this.child});

  @override
  State<PoppupModel> createState() => _PoppupModelState();
}

class _PoppupModelState extends State<PoppupModel> {
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
          margin: const EdgeInsets.all(50),
          padding: const EdgeInsets.all(15),
          height: 800,
          width: 550,
          decoration: BoxDecoration(
            border: Border.all(
              color: APPSTYLE.ON_CONTAINER_COLOR,
            ),
            color: APPSTYLE.WHITE_COLOR,
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
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: mat.InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      mat.Icons.close,
                    ),
                  ),
                ),
              ),
              widget.child ?? const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
