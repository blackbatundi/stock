import 'package:cobiz/controller/bloc/bloc.dart';
import 'package:cobiz/controller/bloc/state.dart';
import 'package:cobiz/services/shared/utils/pop_up_edit_user.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

class LogOut extends StatefulWidget {
  const LogOut({super.key});

  @override
  State<LogOut> createState() => _LogOutState();
}

class _LogOutState extends State<LogOut> {
  AppBloc? bloc;
  @override
  void initState() {
    bloc = AppBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PoppupUserModel(
      child: BlocBuilder<AppBloc, AppState>(
          bloc: bloc,
          builder: (context, state) {
            return Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
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
                                'Deconnexion',
                                style: APPSTYLE.header1,
                              ),
                              20.heightBox,
                              Text(
                                'voulez-vous vraiment vous deconnecter de cette application?',
                                style: APPSTYLE.body1,
                              ),
                              30.heightBox,
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomButton(
                                    onTap: () {},
                                    title: "Oui",
                                    backgroundColor: APPSTYLE.BLACK_COLOR,
                                    textColor: APPSTYLE.WHITE_COLOR,
                                    // onTap: submit,
                                    // state: state,
                                  ),
                                  10.widthBox,
                                  CustomButton(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    title: "Non",
                                    backgroundColor:
                                        APPSTYLE.PRIMARY_COLOR_LIGH,
                                    textColor: APPSTYLE.WHITE_COLOR,
                                    // onTap: submit,
                                    // state: state,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
