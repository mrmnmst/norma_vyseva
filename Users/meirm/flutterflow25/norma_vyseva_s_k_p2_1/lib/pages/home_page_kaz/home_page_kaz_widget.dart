import '';
import '/components/dialog_page_k_z1_widget.dart';
import '/components/dialog_page_k_z2_widget.dart';
import '/components/dialog_page_k_z3_widget.dart';
import '/components/dialog_page_k_z4_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_kaz_model.dart';
export 'home_page_kaz_model.dart';

class HomePageKazWidget extends StatefulWidget {
  const HomePageKazWidget({super.key});

  static String routeName = 'HomePageKaz';
  static String routePath = '/homePageKaz';

  @override
  State<HomePageKazWidget> createState() => _HomePageKazWidgetState();
}

class _HomePageKazWidgetState extends State<HomePageKazWidget>
    with TickerProviderStateMixin {
  late HomePageKazModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageKazModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {
        _model.textFieldRadiusTextController?.text =
            functions.functionDoubleToString(FFAppState().radiusKatka);
      });
      safeSetState(() {
        _model.textFieldOborotTextController?.text =
            functions.functionDoubleToString(FFAppState().oborotKatka);
      });
      await Future.delayed(const Duration(milliseconds: 1500));
      if (FFAppState().oborotKatka > 0.0) {
        safeSetState(() {
          _model.tabBarController!.animateTo(
            0,
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        });
      } else {
        safeSetState(() {
          _model.textFieldRadiusTextController?.text = '';
        });
        safeSetState(() {
          _model.textFieldOborotTextController?.text = '';
        });
        safeSetState(() {
          _model.tabBarController!.animateTo(
            _model.tabBarController!.length - 1,
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        });
      }
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.textFieldNormaVysevaTextController ??= TextEditingController();
    _model.textFieldNormaVysevaFocusNode ??= FocusNode();

    _model.textFieldPolnayaKatushkaTextController ??= TextEditingController();
    _model.textFieldPolnayaKatushkaFocusNode ??= FocusNode();

    _model.textFieldOtkrutKatushkuMMTextController ??= TextEditingController();
    _model.textFieldOtkrutKatushkuMMFocusNode ??= FocusNode();

    _model.textFieldOdinMMRavenTextController ??= TextEditingController();
    _model.textFieldOdinMMRavenFocusNode ??= FocusNode();

    _model.textFieldRadiusTextController ??= TextEditingController();
    _model.textFieldRadiusFocusNode ??= FocusNode();

    _model.textFieldOborotTextController ??= TextEditingController();
    _model.textFieldOborotFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryText,
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: 430.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFFAEDA3),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 4.0, 6.0, 0.0),
                                          child: Container(
                                            width: 420.0,
                                            height: 75.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF57636B),
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 1.5,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '\"СКП (СЗС)-2.1\"/\"Омичка\" \nтұқымсепкіштерінде тұқым себу\nмөлшерін баптау',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 4.0, 6.0, 0.0),
                                          child: Container(
                                            width: 420.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              border: Border.all(
                                                color: Color(0xFF475056),
                                                width: 1.5,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '1 гектарға себу нормасын енгізіңіз',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Color(
                                                                0xFF000306),
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 2.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    4.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.looks_one,
                                                          color:
                                                              Color(0xE9339F57),
                                                          size: 28.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    3.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 60.0,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textFieldNormaVysevaTextController,
                                                            focusNode: _model
                                                                .textFieldNormaVysevaFocusNode,
                                                            autofocus: false,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFF475056),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFF475056),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              filled: true,
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          6.0,
                                                                          0.0,
                                                                          6.0),
                                                              hoverColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF141719),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            keyboardType:
                                                                const TextInputType
                                                                    .numberWithOptions(
                                                                    decimal:
                                                                        true),
                                                            cursorColor: Color(
                                                                0xFF000306),
                                                            validator: _model
                                                                .textFieldNormaVysevaTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                            inputFormatters: [
                                                              FilteringTextInputFormatter
                                                                  .allow(RegExp(
                                                                      '\\-?\\d+(\\.\\d{0,})?'))
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        'кг',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              color: Color(
                                                                  0xFF000306),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Opacity(
                                                  opacity: 0.5,
                                                  child: Divider(
                                                    thickness: 1.0,
                                                    color: Color(0xFF475056),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 0.0, 2.0, 0.0),
                                                  child: Text(
                                                    'Катушкалар толығымен ашылған кезде тұқым себуді өлшеп, нәтижені енгізіңіз  (нұсқаулықтың 7,8,9 тармақтары)',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF000306),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 10.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    4.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.looks_two,
                                                          color:
                                                              Color(0xE9339F57),
                                                          size: 28.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    3.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 60.0,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textFieldPolnayaKatushkaTextController,
                                                            focusNode: _model
                                                                .textFieldPolnayaKatushkaFocusNode,
                                                            autofocus: false,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFF475056),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Color(
                                                                      0xFF475056),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                              ),
                                                              filled: true,
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          6.0,
                                                                          0.0,
                                                                          6.0),
                                                              hoverColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF141719),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            keyboardType:
                                                                const TextInputType
                                                                    .numberWithOptions(
                                                                    decimal:
                                                                        true),
                                                            cursorColor: Color(
                                                                0xFF000306),
                                                            validator: _model
                                                                .textFieldPolnayaKatushkaTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                            inputFormatters: [
                                                              FilteringTextInputFormatter
                                                                  .allow(RegExp(
                                                                      '\\-?\\d+(\\.\\d{0,})?'))
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        'кг',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              color: Color(
                                                                  0xFF000306),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Builder(
                                            builder: (context) => Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 13.0, 10.0, 1.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  var _shouldSetState = false;
                                                  safeSetState(() {
                                                    _model
                                                        .textFieldOtkrutKatushkuMMTextController
                                                        ?.text = '';
                                                    _model
                                                        .textFieldOtkrutKatushkuMMFocusNode
                                                        ?.requestFocus();
                                                    WidgetsBinding.instance
                                                        .addPostFrameCallback(
                                                            (_) {
                                                      _model.textFieldOtkrutKatushkuMMTextController
                                                              ?.selection =
                                                          TextSelection
                                                              .collapsed(
                                                        offset: _model
                                                            .textFieldOtkrutKatushkuMMTextController!
                                                            .text
                                                            .length,
                                                      );
                                                    });
                                                  });
                                                  safeSetState(() {
                                                    _model
                                                        .textFieldOdinMMRavenTextController
                                                        ?.text = '';
                                                  });
                                                  _model.normaVyseva =
                                                      double.tryParse(_model
                                                          .textFieldNormaVysevaTextController
                                                          .text);
                                                  safeSetState(() {});
                                                  if ((_model.normaVyseva ==
                                                          0.0) ||
                                                      (_model.textFieldNormaVysevaTextController
                                                              .text ==
                                                          '')) {
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child:
                                                                DialogPageKZ1Widget(),
                                                          ),
                                                        );
                                                      },
                                                    );

                                                    safeSetState(() {
                                                      _model
                                                          .textFieldNormaVysevaTextController
                                                          ?.text = '';
                                                    });
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }
                                                  _model.polnayaKatushka =
                                                      double.tryParse(_model
                                                          .textFieldPolnayaKatushkaTextController
                                                          .text);
                                                  safeSetState(() {});
                                                  if ((_model.polnayaKatushka ==
                                                          0.0) ||
                                                      (_model.textFieldPolnayaKatushkaTextController
                                                              .text ==
                                                          '')) {
                                                    showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child:
                                                                DialogPageKZ2Widget(),
                                                          ),
                                                        );
                                                      },
                                                    );

                                                    safeSetState(() {
                                                      _model
                                                          .textFieldPolnayaKatushkaTextController
                                                          ?.text = '';
                                                    });
                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  }
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 1800));
                                                  _model.paramotkrytKatushk =
                                                      await actions
                                                          .caOtkrKatush(
                                                    _model.normaVyseva,
                                                    _model.polnayaKatushka,
                                                  );
                                                  _shouldSetState = true;
                                                  safeSetState(() {
                                                    _model.textFieldOtkrutKatushkuMMTextController
                                                            ?.text =
                                                        functions
                                                            .functionDoubleToString(
                                                                _model
                                                                    .paramotkrytKatushk!);
                                                  });
                                                  _model.vOdnomMM = await actions
                                                      .newCustomActionVOdnomMM(
                                                    _model.polnayaKatushka,
                                                  );
                                                  _shouldSetState = true;
                                                  safeSetState(() {
                                                    _model.textFieldOdinMMRavenTextController
                                                            ?.text =
                                                        functions
                                                            .functionDoubleToString(
                                                                _model
                                                                    .vOdnomMM!);
                                                    _model
                                                        .textFieldOdinMMRavenFocusNode
                                                        ?.requestFocus();
                                                    WidgetsBinding.instance
                                                        .addPostFrameCallback(
                                                            (_) {
                                                      _model.textFieldOdinMMRavenTextController
                                                              ?.selection =
                                                          TextSelection
                                                              .collapsed(
                                                        offset: _model
                                                            .textFieldOdinMMRavenTextController!
                                                            .text
                                                            .length,
                                                      );
                                                    });
                                                  });
                                                  _model.odinMMRaven2 =
                                                      _model.vOdnomMM;
                                                  safeSetState(() {});
                                                  _model.katushka30 =
                                                      _model.paramotkrytKatushk;
                                                  safeSetState(() {});
                                                  if (_model.katushka30! >
                                                      30.0) {
                                                    await showDialog(
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, -1.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {
                                                              FocusScope.of(
                                                                      dialogContext)
                                                                  .unfocus();
                                                              FocusManager
                                                                  .instance
                                                                  .primaryFocus
                                                                  ?.unfocus();
                                                            },
                                                            child:
                                                                DialogPageKZ3Widget(),
                                                          ),
                                                        );
                                                      },
                                                    );

                                                    if (_shouldSetState)
                                                      safeSetState(() {});
                                                    return;
                                                  } else {
                                                    if (_model.normaVyseva! <
                                                        _model.odinMMRaven2!) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                FocusScope.of(
                                                                        dialogContext)
                                                                    .unfocus();
                                                                FocusManager
                                                                    .instance
                                                                    .primaryFocus
                                                                    ?.unfocus();
                                                              },
                                                              child:
                                                                  DialogPageKZ4Widget(),
                                                            ),
                                                          );
                                                        },
                                                      );

                                                      if (_shouldSetState)
                                                        safeSetState(() {});
                                                      return;
                                                    }
                                                  }

                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                },
                                                text:
                                                    'Тұқым себу мөлшерін есептеу',
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xE9339F57),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 5.0, 10.0, 13.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 1000));
                                                safeSetState(() {
                                                  _model
                                                      .textFieldPolnayaKatushkaTextController
                                                      ?.text = '';
                                                  _model
                                                      .textFieldPolnayaKatushkaFocusNode
                                                      ?.requestFocus();
                                                  WidgetsBinding.instance
                                                      .addPostFrameCallback(
                                                          (_) {
                                                    _model.textFieldPolnayaKatushkaTextController
                                                            ?.selection =
                                                        TextSelection.collapsed(
                                                      offset: _model
                                                          .textFieldPolnayaKatushkaTextController!
                                                          .text
                                                          .length,
                                                    );
                                                  });
                                                });
                                                safeSetState(() {
                                                  _model
                                                      .textFieldOtkrutKatushkuMMTextController
                                                      ?.text = ' ';
                                                });
                                                safeSetState(() {
                                                  _model
                                                      .textFieldOdinMMRavenTextController
                                                      ?.text = '';
                                                });
                                              },
                                              text:
                                                  'Соңғы есептеулердің деректерін өшіру',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFF7C8B93),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 6.0, 3.0),
                                          child: Container(
                                            width: 420.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              border: Border.all(
                                                color: Color(0xFF475056),
                                                width: 1.5,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 3.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.looks_3,
                                                          color:
                                                              Color(0xE9339F57),
                                                          size: 28.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Катушканы',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              color: Color(
                                                                  0xFF000306),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 55.0,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textFieldOtkrutKatushkuMMTextController,
                                                            focusNode: _model
                                                                .textFieldOtkrutKatushkuMMFocusNode,
                                                            autofocus: false,
                                                            readOnly: true,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              enabledBorder:
                                                                  InputBorder
                                                                      .none,
                                                              focusedBorder:
                                                                  InputBorder
                                                                      .none,
                                                              errorBorder:
                                                                  InputBorder
                                                                      .none,
                                                              focusedErrorBorder:
                                                                  InputBorder
                                                                      .none,
                                                              filled: true,
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          3.0,
                                                                          6.0,
                                                                          0.0,
                                                                          6.0),
                                                              hoverColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xE9339F57),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            validator: _model
                                                                .textFieldOtkrutKatushkuMMTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        'мм-ге ашыңыз',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              color: Color(
                                                                  0xFF000306),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Opacity(
                                                  opacity: 0.5,
                                                  child: Divider(
                                                    thickness: 1.0,
                                                    color: Color(0xFF475056),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          1.0, 3.0, 1.0, 3.0),
                                                  child: Text(
                                                    'Тұқым себу мөлшерін реттеу қадамы (нұсқаулықтың 17-тармағы):',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF000306),
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 3.0, 0.0, 10.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons.looks_4,
                                                          color:
                                                              Color(0xE9339F57),
                                                          size: 28.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        '1 мм катушка',
                                                        textAlign:
                                                            TextAlign.end,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              color: Color(
                                                                  0xFF000306),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 60.0,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textFieldOdinMMRavenTextController,
                                                            focusNode: _model
                                                                .textFieldOdinMMRavenFocusNode,
                                                            autofocus: false,
                                                            readOnly: true,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: true,
                                                              enabledBorder:
                                                                  InputBorder
                                                                      .none,
                                                              focusedBorder:
                                                                  InputBorder
                                                                      .none,
                                                              errorBorder:
                                                                  InputBorder
                                                                      .none,
                                                              focusedErrorBorder:
                                                                  InputBorder
                                                                      .none,
                                                              filled: true,
                                                              fillColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          3.0,
                                                                          6.0,
                                                                          0.0,
                                                                          6.0),
                                                              hoverColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xE9339F57),
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            validator: _model
                                                                .textFieldOdinMMRavenTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        'кг-ға тең',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              color: Color(
                                                                  0xFF000306),
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFAEDA3),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: Color(0xFF475056),
                                          width: 1.5,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    child: Image.asset(
                                                      'assets/images/radius_katka.png',
                                                      width: 100.0,
                                                      height: 100.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    2.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          3.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Сепкіш\nкатоктарының\nрадиусын енгізіңіз',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: Color(
                                                                          0xFF141719),
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        2.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Icon(
                                                              Icons.looks_5,
                                                              color: Color(
                                                                  0xE9339F57),
                                                              size: 28.0,
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 55.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .textFieldRadiusTextController,
                                                              focusNode: _model
                                                                  .textFieldRadiusFocusNode,
                                                              autofocus: false,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                isDense: true,
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                ),
                                                                filled: true,
                                                                fillColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                                contentPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            5.0,
                                                                            4.0,
                                                                            5.0),
                                                                hoverColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .info,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: Color(
                                                                        0xFF141719),
                                                                    fontSize:
                                                                        15.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              keyboardType:
                                                                  const TextInputType
                                                                      .numberWithOptions(
                                                                      decimal:
                                                                          true),
                                                              cursorColor: Color(
                                                                  0xFF000306),
                                                              validator: _model
                                                                  .textFieldRadiusTextControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                              inputFormatters: [
                                                                FilteringTextInputFormatter
                                                                    .allow(RegExp(
                                                                        '\\-?\\d+(\\.\\d{0,})?'))
                                                              ],
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          3.0,
                                                                          0.0,
                                                                          20.0,
                                                                          0.0),
                                                              child: Text(
                                                                'см',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: Color(
                                                                          0xFF000306),
                                                                      fontSize:
                                                                          15.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: 75.0,
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFFAEDA3),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: Color(0xFF475056),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 3.0, 5.0, 4.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                safeSetState(() {
                                                  _model
                                                      .textFieldOborotTextController
                                                      ?.text = '';
                                                });
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 1000));
                                                FFAppState().oborotKatka =
                                                    functions.functionOborotKatka(
                                                        double.parse(_model
                                                            .textFieldRadiusTextController
                                                            .text));
                                                safeSetState(() {});
                                                FFAppState().radiusKatka =
                                                    double.parse(_model
                                                        .textFieldRadiusTextController
                                                        .text);
                                                safeSetState(() {});
                                                if (FFAppState().oborotKatka ==
                                                    0.0) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        content: Text(
                                                            'Радиус катка должен быть не меньше 25 см и не больше 27.5 см'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                } else {
                                                  safeSetState(() {
                                                    _model.textFieldOborotTextController
                                                            ?.text =
                                                        functions
                                                            .functionDoubleToString(
                                                                FFAppState()
                                                                    .oborotKatka);
                                                  });
                                                }
                                              },
                                              text: 'Есептеу',
                                              options: FFButtonOptions(
                                                width: 120.0,
                                                height: 35.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xE9339F57),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: Colors.white,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Себу нормасын есептеу үшін \nкатоктардың айналым саны',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            Color(0xFF141719),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 3.0, 0.0, 5.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: Icon(
                                                    Icons.looks_6,
                                                    color: Color(0xE9339F57),
                                                    size: 28.0,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Container(
                                                    width: 55.0,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .textFieldOborotTextController,
                                                      focusNode: _model
                                                          .textFieldOborotFocusNode,
                                                      autofocus: false,
                                                      readOnly: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                        ),
                                                        filled: true,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    5.0,
                                                                    4.0,
                                                                    5.0),
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Color(
                                                                0xE9339F57),
                                                            fontSize: 15.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      keyboardType:
                                                          const TextInputType
                                                              .numberWithOptions(
                                                              decimal: true),
                                                      cursorColor:
                                                          Color(0xFF000306),
                                                      validator: _model
                                                          .textFieldOborotTextControllerValidator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        FilteringTextInputFormatter
                                                            .allow(RegExp(
                                                                '\\-?\\d+(\\.\\d{0,})?'))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 500.0,
                                        decoration: BoxDecoration(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(4.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 3.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Егіс нормасын баптау бойынша\nНҰСҚАУЛЫҚ',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Color(
                                                                0xFF141719),
                                                            fontSize: 15.5,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    5.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: AutoSizeText(
                                                          '1. Тұқымсепкіштің каток радиусын өлшеп, оны [5]-өріске енгізіңіз.\n2. «Есептеу» батырмасын басыңыз. [6]-өрісінде себу нормасын есептеу үшін катоктардың айналым саны көрсетіледі.\n3. Тұқымсепкішті (домкрат немесе көтергішпен) көтеріп, катоктардың еркін айналуы үшін тіректер қойыңыз.\n4. Тұқым өткізгіштерді сошниктерден ажыратыңыз.\n5. Тұқымсепкіш аппараттарын тұқым материалымен толғанша катоктарды айналдырыңыз.\n6. Тұқымсепкіштің астына қандай да бір мата (брезент, полиэтилен) төсеңіз немесе барлық 9 тұқым өткізгішке қапшықтар байлаңыз.\n7. Тұқымсепкіш аппараттың катушкаларын толық ашыңыз. Ол үшін себу нормасының реттегіш тұтқасын солға жылжытыңыз, тұқымсепкіш аппараттың муфтасы сыртқа (солға) 30 мм-ге шығарылғанша. Тұқымсепкіш аппарат муфтасының шығуын өлшеу үшін ұзындығы 3 см қысқа сызғышты пайдалану ыңғайлы.\n8. Қосымшадағы [6]-өрісте көрсетілген айналымдар саны бойынша катоктарды айналдырыңыз.\n9. Барлық 9 тұқым өткізгіштен шыққан тұқымды өлшеңіз.\n10. Алынған тұқым салмағын (килограммен) қосымшаның [2]-өрісіне енгізіңіз.\n11. Қосымшаның [1]-өрісіне 1 гектарға қажетті тұқым себу нормасын килограммен енгізіңіз.\n12. «Тұқым себу мөлшерін есептеу» батырмасын басыңыз.\n13. Қосымшаның [3]-өрісінде тұқымсепкіш аппараттың катушкаларын қанша миллиметрге ашу керек екені көрсетіледі.\n14. Тұқымсепкіш аппараттың катушкаларын ашу үшін себу нормасының реттегіш тұтқасын солға жылжытыңыз, тұқымсепкіш аппараттың муфтасы қосымшаның [3]-өрісінде көрсетілген миллиметр санына сыртқа (солға) шығарылғанша.\n15. Осы нұсқаулықтың 8 және 9-тармақтарын қайталаңыз.\n16. Алынған тұқым материалының салмағын 100-ге көбейтіңіз. Алынған сан 1 гектарға килограммен тұқым салмағы болып табылады.\n17. Егер 16-тармақта алынған салмағы қажетті себу нормасынан (қосымшаның [1]-өрісіндегі мән) өзгеше болса, онда катушканы азайту немесе көбейту арқылы 1 гектарға тұқым себу нормасын түзету қажет, бұл үшін қосымшаның [4]-өрісіндегі 1 мм катушкаға сәйкес келетін килограмм тұқым мәнін пайдаланыңыз.\n\nТҰҚЫМ СЕБУ НОРМАСЫН ЕСЕПТЕУ МЫСАЛЫ:\n▪ Каток радиусы 26 см-ге тең ([5]-өріс).\n▪ Себу нормасын есептеу үшін катоктардың айналым саны 29-ға тең ([6]-өріс).\n▪ Қажетті тұқым себу нормасы — 1 гектарға 115 кг ([1]-өріс).\n▪ Катушкалар 30 мм-ге ашылған кезде катоктарды 29 рет айналдырғаннан кейін алынған тұқым салмағы 1,5 кг-ға тең ([2]-өріс).\n▪ Тұқымсепкіш аппараттың катушкаларын ашу 23 мм деп есептелді ([3]-өріс).\n▪ Катушканың 1 мм-ге сәйкес тұқым салмағы 4 кг-ға тең ([4]-өріс).\n▪ Тұқым себуді бақылау тексерісі жүргізіледі. Ол үшін 14, 15, 16-тармақтарды орындау қажет:\n— катушка 23 мм-ге ашылады;\n— катоктар 29 рет айналдырылады;\n— алынған тұқым материалы өлшеніп, 100-ге көбейтіледі.\nАлынған сан 1 гектарға килограммен тұқым салмағы болып табылады. Мысалы, бұл 109 кг/га.\n▪ Алынған себу нормасын (109 кг/га) қажетті (115 кг/га) мәнге жақындату үшін катушкаларды тағы 1 мм-ге ашу қажет ([4]-өрісі = 5 кг).\n▪ Нәтижесінде сіз қажетті мәнге жақын түзетілген нәтиже аласыз – 114 кг/га (1 мм × 5 кг + 109 кг = 114 кг).',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: Color(
                                                                    0xFF141719),
                                                                fontSize: 15.5,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.0, 0),
                          child: FlutterFlowButtonTabBar(
                            useToggleButtonStyle: false,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            unselectedLabelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            labelColor: FlutterFlowTheme.of(context).info,
                            unselectedLabelColor:
                                FlutterFlowTheme.of(context).info,
                            backgroundColor: Color(0xE9339F57),
                            unselectedBackgroundColor: Color(0xFF7C8B93),
                            unselectedBorderColor:
                                FlutterFlowTheme.of(context).info,
                            borderWidth: 0.0,
                            borderRadius: 0.0,
                            elevation: 0.0,
                            labelPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 7.0, 0.0, 7.0),
                            buttonMargin: EdgeInsetsDirectional.fromSTEB(
                                2.0, 0.0, 2.0, 2.0),
                            padding: EdgeInsets.all(1.0),
                            tabs: [
                              Tab(
                                text: 'Басты бет',
                              ),
                              Tab(
                                text: ' Баптаулар\nНұсқаулық',
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [() async {}, () async {}][i]();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
