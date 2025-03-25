import '';
import '/components/dialog_page1_widget.dart';
import '/components/dialog_page2_widget.dart';
import '/components/dialog_page3_widget.dart';
import '/components/dialog_page4_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_rus_widget.dart' show HomePageRusWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageRusModel extends FlutterFlowModel<HomePageRusWidget> {
  ///  Local state fields for this page.

  double? normaVyseva;

  double? polnayaKatushka;

  double? otkrytKatushku;

  double? odinMMRaven;

  double? katushka30;

  double? odinMMRaven2;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField_NormaVyseva widget.
  FocusNode? textFieldNormaVysevaFocusNode;
  TextEditingController? textFieldNormaVysevaTextController;
  String? Function(BuildContext, String?)?
      textFieldNormaVysevaTextControllerValidator;
  // State field(s) for TextField_PolnayaKatushka widget.
  FocusNode? textFieldPolnayaKatushkaFocusNode;
  TextEditingController? textFieldPolnayaKatushkaTextController;
  String? Function(BuildContext, String?)?
      textFieldPolnayaKatushkaTextControllerValidator;
  // Stores action output result for [Custom Action - caOtkrKatush] action in Button widget.
  double? paramotkrytKatushk;
  // Stores action output result for [Custom Action - newCustomActionVOdnomMM] action in Button widget.
  double? vOdnomMM;
  // State field(s) for TextField_OtkrutKatushkuMM widget.
  FocusNode? textFieldOtkrutKatushkuMMFocusNode;
  TextEditingController? textFieldOtkrutKatushkuMMTextController;
  String? Function(BuildContext, String?)?
      textFieldOtkrutKatushkuMMTextControllerValidator;
  // State field(s) for TextField_OdinMMRaven widget.
  FocusNode? textFieldOdinMMRavenFocusNode;
  TextEditingController? textFieldOdinMMRavenTextController;
  String? Function(BuildContext, String?)?
      textFieldOdinMMRavenTextControllerValidator;
  // State field(s) for TextField_radius widget.
  FocusNode? textFieldRadiusFocusNode;
  TextEditingController? textFieldRadiusTextController;
  String? Function(BuildContext, String?)?
      textFieldRadiusTextControllerValidator;
  // State field(s) for TextField_oborot widget.
  FocusNode? textFieldOborotFocusNode;
  TextEditingController? textFieldOborotTextController;
  String? Function(BuildContext, String?)?
      textFieldOborotTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    textFieldNormaVysevaFocusNode?.dispose();
    textFieldNormaVysevaTextController?.dispose();

    textFieldPolnayaKatushkaFocusNode?.dispose();
    textFieldPolnayaKatushkaTextController?.dispose();

    textFieldOtkrutKatushkuMMFocusNode?.dispose();
    textFieldOtkrutKatushkuMMTextController?.dispose();

    textFieldOdinMMRavenFocusNode?.dispose();
    textFieldOdinMMRavenTextController?.dispose();

    textFieldRadiusFocusNode?.dispose();
    textFieldRadiusTextController?.dispose();

    textFieldOborotFocusNode?.dispose();
    textFieldOborotTextController?.dispose();
  }
}
