import 'package:cobiz/start/shared/style.dart';
import 'package:flutter/material.dart';

class ArchitectureApp extends StatefulWidget {
  final Widget? header;

  final Widget? content;

  const ArchitectureApp({
    Key? key,
    this.content,
    this.header,
  }) : super(key: key);

  @override
  State<ArchitectureApp> createState() => _ArchitectureAppState();
}

class _ArchitectureAppState extends State<ArchitectureApp> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget.header!,
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: APPSTYLE.SCAFFOLD_BACGROUND_COLOR_LIGH,
            ),
            child: widget.content!,
          ),
        ),
      ],
    );
  }
}
