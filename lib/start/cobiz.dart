import 'dart:ui';

import 'package:cobiz/controller/bloc/bloc.dart';
import 'package:cobiz/page/pages/app/app.dart';
import 'package:cobiz/start/shared/routes.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Cobiz extends StatefulWidget {
  const Cobiz({super.key});

  @override
  State<Cobiz> createState() => _CobizState();
}

class _CobizState extends State<Cobiz> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: FluentApp(
        debugShowCheckedModeBanner: false,
        title: "Cobiz",
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        locale: AppLocalizations.supportedLocales[1],
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
          scaffoldBackgroundColor: APPSTYLE.SCAFFOLD_BACGROUND_COLOR_LIGH,
        ),
        routes: routes,
        scrollBehavior: NoThumbScrollBehavior(),
        home: const App(),
      ),
    );
  }
}

class NoThumbScrollBehavior extends ScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.trackpad
      };
}
