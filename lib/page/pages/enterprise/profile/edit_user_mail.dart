import 'package:cobiz/controller/bloc/bloc.dart';
import 'package:cobiz/controller/bloc/event.dart';
import 'package:cobiz/controller/bloc/state.dart';
import 'package:cobiz/services/shared/utils/pop_up_edit_user.dart';
import 'package:cobiz/services/shared/widget.dart';
import 'package:cobiz/start/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

class EditUserMail extends StatefulWidget {
  const EditUserMail({super.key});

  @override
  State<EditUserMail> createState() => _EditUserMailState();
}

class _EditUserMailState extends State<EditUserMail>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  AppBloc? bloc;
  @override
  void initState() {
    bloc = AppBloc();
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
    return PoppupUserModel(
      child: BlocBuilder<AppBloc, AppState>(
          bloc: bloc,
          builder: (context, state) {
            int indexTab = 0;
            if (state is SUCCESS) indexTab = state.value;

            return Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: [
                        Center(
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Entrez',
                                  style: APPSTYLE.header1,
                                ),
                                Text(
                                  'votre adresse mail',
                                  style: APPSTYLE.header1,
                                ),
                                8.heightBox,
                                const FormPassWordText(
                                  hint: "Entrez le nom",
                                ),
                                30.heightBox,
                                CustomButton(
                                  onTap: () {
                                    if (indexTab < 2) {
                                      _tabController!.animateTo(
                                        ++indexTab,
                                      );
                                      bloc!.add(USERCHANGEMENU(
                                          _tabController!.index));
                                    }
                                  },
                                  title:
                                      indexTab < 2 ? "suivant" : "enregistre",
                                  backgroundColor: indexTab == 2
                                      ? APPSTYLE.PRIMARY_COLOR_LIGH
                                      : APPSTYLE.BLACK_COLOR,
                                  textColor: APPSTYLE.WHITE_COLOR,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Entrez', style: APPSTYLE.header1),
                                Text(
                                  'votre adresse mail',
                                  style: APPSTYLE.header1,
                                ),
                                8.heightBox,
                                const FormPassWordText(
                                  hint: "Entrez le nom",
                                ),
                                30.heightBox,
                                CustomButton(
                                  onTap: () {
                                    if (indexTab < 2) {
                                      _tabController!.animateTo(
                                        ++indexTab,
                                      );
                                      bloc!.add(USERCHANGEMENU(
                                          _tabController!.index));
                                      setState(() {});
                                    }
                                  },
                                  title:
                                      indexTab < 2 ? "suivant" : "enregistre",
                                  backgroundColor: indexTab == 2
                                      ? APPSTYLE.PRIMARY_COLOR_LIGH
                                      : APPSTYLE.BLACK_COLOR,
                                  textColor: APPSTYLE.WHITE_COLOR,
                                  // onTap: submit,
                                  // state: state,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Confirmer', style: APPSTYLE.header1),
                                Text(
                                  'votre adresse mail',
                                  style: APPSTYLE.header1,
                                ),
                                8.heightBox,
                                const FormText(
                                  hint: "Entrez le nom",
                                ),
                                30.heightBox,
                                CustomButton(
                                  onTap: () {},
                                  title:
                                      indexTab == 2 ? "suivant" : "enregistre",
                                  backgroundColor: indexTab == 2
                                      ? APPSTYLE.BLACK_COLOR
                                      : APPSTYLE.PRIMARY_COLOR_LIGH,
                                  textColor: APPSTYLE.WHITE_COLOR,
                                  // onTap: submit,
                                  // state: state,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
