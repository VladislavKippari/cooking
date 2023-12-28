import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/info_spat_metla/info_spat_metla_widget.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'spatulas_model.dart';
export 'spatulas_model.dart';

class SpatulasWidget extends StatefulWidget {
  const SpatulasWidget({Key? key}) : super(key: key);

  @override
  _SpatulasWidgetState createState() => _SpatulasWidgetState();
}

class _SpatulasWidgetState extends State<SpatulasWidget>
    with TickerProviderStateMixin {
  late SpatulasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasTransformTriggered3 = false;
  var hasTransformTriggered4 = false;
  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(-100.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: Offset(100.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'transformOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 1.0,
          end: 0.0,
        ),
      ],
    ),
    'transformOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 1.0,
          end: 0.0,
        ),
      ],
    ),
    'stackOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -10.0),
        ),
      ],
    ),
    'stackOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, 10.0),
        ),
      ],
    ),
    'transformOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        MoveEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(7.0, -5.0),
        ),
      ],
    ),
    'transformOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        ScaleEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.93, 0.93),
          end: Offset(1.0, 1.0),
        ),
        MoveEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(7.0, -5.0),
        ),
      ],
    ),
    'transformOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 0.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.93, 0.93),
        ),
      ],
    ),
    'stackOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, 10.0),
        ),
      ],
    ),
    'transformOnActionTriggerAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(7.0, -5.0),
        ),
      ],
    ),
    'transformOnActionTriggerAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(7.0, -5.0),
        ),
        ScaleEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.93, 0.93),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 400.ms,
          duration: 300.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpatulasModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.loaded = true;
      });
      if (animationsMap['containerOnActionTriggerAnimation1'] != null) {
        await animationsMap['containerOnActionTriggerAnimation1']!
            .controller
            .forward(from: 0.0);
      }
      if (animationsMap['transformOnActionTriggerAnimation5'] != null) {
        animationsMap['transformOnActionTriggerAnimation5']!
            .controller
            .forward(from: 0.0);
      }
      if (animationsMap['transformOnActionTriggerAnimation6'] != null) {
        animationsMap['transformOnActionTriggerAnimation6']!
            .controller
            .forward(from: 0.0);
      }
      await Future.delayed(const Duration(milliseconds: 2500));
      if (animationsMap['transformOnActionTriggerAnimation1'] != null) {
        animationsMap['transformOnActionTriggerAnimation1']!
            .controller
            .forward(from: 0.0);
      }
      if (animationsMap['transformOnActionTriggerAnimation2'] != null) {
        await animationsMap['transformOnActionTriggerAnimation2']!
            .controller
            .forward(from: 0.0);
      }
      await _model.pageViewController?.animateToPage(
        1,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
      if (animationsMap['containerOnActionTriggerAnimation2'] != null) {
        await animationsMap['containerOnActionTriggerAnimation2']!
            .controller
            .forward(from: 0.0);
      }
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0x00101010),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Buttonasd',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Bvvz',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF57636C), Color(0xFF101010)],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(30.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.23,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(30.0),
                                            topRight: Radius.circular(30.0),
                                          ),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Transform.translate(
                                            offset: Offset(0.0, 0.0),
                                            child: Stack(
                                              children: [
                                                Opacity(
                                                  opacity: 0.0,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 1.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.3,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      30.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      30.0),
                                                            ),
                                                            border: Border.all(
                                                              color: Color(
                                                                  0x00DDDDDD),
                                                            ),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: AutoSizeText(
                                                            '2. Тефлон / Чугун',
                                                            textAlign:
                                                                TextAlign.end,
                                                            maxLines: 1,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Color(
                                                                      0xFFDDDDDD),
                                                                  fontSize:
                                                                      30.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.3,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00FFFFFF),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 1.0),
                                                      child: Stack(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 1.0),
                                                        children: [
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.5,
                                                            height:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                              image:
                                                                  DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image:
                                                                    Image.asset(
                                                                  'assets/images/byyyy.png',
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.05,
                                                                height: 0.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x00FFFFFF),
                                                                ),
                                                              ),
                                                              Stack(
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30.0),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.25,
                                                                        height: MediaQuery.sizeOf(context).height *
                                                                            0.07,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFF009688),
                                                                          borderRadius:
                                                                              BorderRadius.circular(30.0),
                                                                        ),
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                0.0,
                                                                                20.0,
                                                                                0.0),
                                                                            child:
                                                                                AutoSizeText(
                                                                              'Бамбук и ...',
                                                                              maxLines: 1,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: Color(0xFF212427),
                                                                                    fontSize: 27.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        setState(
                                                                            () {
                                                                          _model.teflon =
                                                                              !_model.teflon;
                                                                        });
                                                                        await Future.delayed(const Duration(
                                                                            milliseconds:
                                                                                1000));

                                                                        context
                                                                            .goNamed(
                                                                          'spatulasRest',
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            kTransitionInfoKey:
                                                                                TransitionInfo(
                                                                              hasTransition: true,
                                                                              transitionType: PageTransitionType.fade,
                                                                              duration: Duration(milliseconds: 0),
                                                                            ),
                                                                          },
                                                                        );
                                                                      },
                                                                      text: '',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.25,
                                                                        height: MediaQuery.sizeOf(context).height *
                                                                            0.07,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: Color(
                                                                            0x0039D2C0),
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Color(0xFFDDDDDD),
                                                                            ),
                                                                        elevation:
                                                                            3.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 1.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      context.goNamed(
                                                        'teflonpan',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    text: '',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_return_rounded,
                                                      size: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 30.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 30.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 300.0;
                                                        } else {
                                                          return 30.0;
                                                        }
                                                      }(),
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.1,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.07,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Color(0x89800000),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        topRight:
                                                            Radius.circular(
                                                                30.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 1.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      context.goNamed(
                                                        'asdasd',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    text: '',
                                                    icon: FaIcon(
                                                      FontAwesomeIcons.home,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.1,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.07,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: Color(0x8A800000),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                30.0),
                                                        topRight:
                                                            Radius.circular(
                                                                0.0),
                                                      ),
                                                    ),
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
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                _model.expand = !_model.expand;
                              });
                              await Future.delayed(
                                  const Duration(milliseconds: 3000));
                              setState(() {
                                _model.textblure = true;
                              });
                            },
                            child: Container(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 0.14,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.64,
                              decoration: BoxDecoration(),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Transform.translate(
                                  offset: Offset(0.0, 0.0),
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 600),
                                    curve: Curves.linear,
                                    width: double.infinity,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.5,
                                    decoration: BoxDecoration(
                                      color: Color(0x001C2D92),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Stack(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          children: [
                                            Opacity(
                                              opacity: 0.0,
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          30.0, 0.0, 30.0, 0.0),
                                                  child: AnimatedContainer(
                                                    duration: Duration(
                                                        milliseconds: 700),
                                                    curve: Curves.linear,
                                                    width: double.infinity,
                                                    height: _model.expand
                                                        ? MediaQuery.sizeOf(
                                                                context)
                                                            .height
                                                        : (MediaQuery.sizeOf(
                                                                    context)
                                                                .height *
                                                            0.0),
                                                    decoration: BoxDecoration(
                                                      color: Color(0x00FFFFFF),
                                                      image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        image: Image.asset(
                                                          'assets/images/asdasd.png',
                                                        ).image,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                30.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                30.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        topRight:
                                                            Radius.circular(
                                                                30.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, 1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30.0,
                                                                  0.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: AnimatedContainer(
                                                        duration: Duration(
                                                            milliseconds: 700),
                                                        curve: Curves.linear,
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.12,
                                                        height: !_model.toggleBG &&
                                                                !_model
                                                                    .toggleText &&
                                                                !_model
                                                                    .offToglfe
                                                            ? (MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.45)
                                                            : (MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.5),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFDDDDDD),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    30.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0.0),
                                                          ),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 1.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      30.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              AnimatedContainer(
                                                            duration: Duration(
                                                                milliseconds:
                                                                    700),
                                                            curve:
                                                                Curves.linear,
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.12,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.5,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x00DDDDDD),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        30.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                              ),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 1.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child:
                                                              AnimatedContainer(
                                                            duration: Duration(
                                                                milliseconds:
                                                                    700),
                                                            curve:
                                                                Curves.linear,
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.12,
                                                            height: _model.toggleBG &&
                                                                    _model
                                                                        .toggleText &&
                                                                    !_model
                                                                        .offToglfe
                                                                ? (MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.45)
                                                                : (MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.5),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFDDDDDD),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                              ),
                                                            ),
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, 1.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        30.0,
                                                                        5.0),
                                                            child:
                                                                AnimatedContainer(
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      700),
                                                              curve:
                                                                  Curves.linear,
                                                              width: double
                                                                  .infinity,
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.5,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFDDDDDD),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          30.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                ),
                                                              ),
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30.0,
                                                                  0.0,
                                                                  30.0,
                                                                  5.0),
                                                      child: AnimatedContainer(
                                                        duration: Duration(
                                                            milliseconds: 700),
                                                        curve: Curves.linear,
                                                        width: double.infinity,
                                                        height: !_model.toggleBG &&
                                                                !_model
                                                                    .toggleText &&
                                                                !_model
                                                                    .offToglfe
                                                            ? (MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.5)
                                                            : (MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.0),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00DDDDDD),
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.fill,
                                                            image: Image.asset(
                                                              'assets/images/leftas.png',
                                                            ).image,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    30.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    30.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0.0),
                                                          ),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30.0,
                                                                  0.0,
                                                                  30.0,
                                                                  5.0),
                                                      child: AnimatedContainer(
                                                        duration: Duration(
                                                            milliseconds: 700),
                                                        curve: Curves.linear,
                                                        width: double.infinity,
                                                        height: _model.toggleBG &&
                                                                _model
                                                                    .toggleText &&
                                                                !_model
                                                                    .offToglfe
                                                            ? (MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.5)
                                                            : (MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.0),
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x00DDDDDD),
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.fill,
                                                            image: Image.asset(
                                                              'assets/images/rightASASD.png',
                                                            ).image,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    30.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    30.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0.0),
                                                          ),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(30.0, 0.0,
                                                                30.0, 0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                      child: PageView(
                                                        physics:
                                                            const NeverScrollableScrollPhysics(),
                                                        controller: _model
                                                                .pageViewController ??=
                                                            PageController(
                                                                initialPage: 0),
                                                        onPageChanged: (_) =>
                                                            setState(() {}),
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        children: [
                                                          Container(
                                                            width: 100.0,
                                                            height: 100.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x00FFFFFF),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                if (_model
                                                                        .pageViewCurrentIndex ==
                                                                    1) {
                                                                  return Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              20.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          setState(
                                                                              () {
                                                                            _model.toggleStag =
                                                                                !_model.toggleStag;
                                                                          });
                                                                        },
                                                                        child:
                                                                            AnimatedContainer(
                                                                          duration:
                                                                              Duration(milliseconds: 700),
                                                                          curve:
                                                                              Curves.linear,
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              MediaQuery.sizeOf(context).height * 0.5,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0x00DDDDDD),
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              bottomLeft: Radius.circular(30.0),
                                                                              bottomRight: Radius.circular(30.0),
                                                                              topLeft: Radius.circular(0.0),
                                                                              topRight: Radius.circular(0.0),
                                                                            ),
                                                                          ),
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Align(
                                                                                    alignment: AlignmentDirectional(0.0, 0.0),
                                                                                    child: Container(
                                                                                      width: double.infinity,
                                                                                      height: double.infinity,
                                                                                      child: Stack(
                                                                                        children: [
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            children: [],
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                            child: Container(
                                                                                              width: double.infinity,
                                                                                              height: double.infinity,
                                                                                              child: Stack(
                                                                                                children: [
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                    child: Container(
                                                                                                      width: double.infinity,
                                                                                                      height: double.infinity,
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: Color(0x00F1F4F8),
                                                                                                        borderRadius: BorderRadius.circular(0.0),
                                                                                                      ),
                                                                                                      child: Align(
                                                                                                        alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                        child: AutoSizeText(
                                                                                                          'Металическая лопатка по сравнению с остальными выигрывает за счет своей прочности, простоте в уходе и долговечности. Более того отсутствуют какие либо риски для здоровья. ',
                                                                                                          textAlign: TextAlign.start,
                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                color: Color(0xFF212427),
                                                                                                                fontSize: 70.0,
                                                                                                                letterSpacing: 0.12,
                                                                                                                fontWeight: FontWeight.w900,
                                                                                                                lineHeight: 1.5,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ).animateOnActionTrigger(
                                                                        animationsMap[
                                                                            'containerOnActionTriggerAnimation2']!,
                                                                      ),
                                                                    ),
                                                                  );
                                                                } else {
                                                                  return Container(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x00FFFFFF),
                                                                    ),
                                                                  );
                                                                }
                                                              },
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(
                                                                          20.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  setState(() {
                                                                    _model.toggleStag =
                                                                        !_model
                                                                            .toggleStag;
                                                                  });
                                                                },
                                                                child:
                                                                    AnimatedContainer(
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          700),
                                                                  curve: Curves
                                                                      .easeIn,
                                                                  width: double
                                                                      .infinity,
                                                                  height: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0x0061A161),
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      height: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          'Единственный минус это следы оставляемые на поверхности нержавеющей сковороды. Для остальных сковород металическая  лопатка слишком грубая и из за этого не пригодна к использованию.',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 70.0,
                                                                                letterSpacing: 0.12,
                                                                                fontWeight: FontWeight.w900,
                                                                                lineHeight: 1.5,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ).animateOnActionTrigger(
                                                                animationsMap[
                                                                    'containerOnActionTriggerAnimation3']!,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Opacity(
                                                    opacity: 0.0,
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    30.0,
                                                                    0.0,
                                                                    30.0,
                                                                    0.0),
                                                        child:
                                                            AnimatedContainer(
                                                          duration: Duration(
                                                              milliseconds:
                                                                  400),
                                                          curve: Curves.linear,
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.5,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFDDDDDD),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Transform.scale(
                                                        scaleX: 0.95,
                                                        scaleY: 0.9,
                                                        child: Transform.scale(
                                                          scaleX: 1.0,
                                                          scaleY: 1.0,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        30.0,
                                                                        0.0,
                                                                        30.0,
                                                                        0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        30.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        30.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        30.0),
                                                              ),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.5,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x00DDDDDD),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            30.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            30.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            0.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            30.0),
                                                                  ),
                                                                ),
                                                                child:
                                                                    FlutterFlowVideoPlayer(
                                                                  path:
                                                                      'assets/videos/__(2000_x_1500_.)_(2000_x_1000_.)_(8).mp4',
                                                                  videoType:
                                                                      VideoType
                                                                          .asset,
                                                                  width: double
                                                                      .infinity,
                                                                  height: MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.5,
                                                                  aspectRatio:
                                                                      2.00,
                                                                  autoPlay:
                                                                      true,
                                                                  looping:
                                                                      false,
                                                                  showControls:
                                                                      false,
                                                                  allowFullScreen:
                                                                      false,
                                                                  allowPlaybackSpeedMenu:
                                                                      false,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ).animateOnActionTrigger(
                                                          animationsMap[
                                                              'transformOnActionTriggerAnimation1']!,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: Transform.scale(
                                                        scaleX: 0.95,
                                                        scaleY: 0.9,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      29.0,
                                                                      0.0,
                                                                      29.0,
                                                                      0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      30.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          30.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      30.0),
                                                            ),
                                                            child:
                                                                AnimatedContainer(
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      700),
                                                              curve:
                                                                  Curves.linear,
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x00FFFFFF),
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .fill,
                                                                  image: Image
                                                                      .asset(
                                                                    'assets/images/hard.png',
                                                                  ).image,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          30.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          30.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          30.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'transformOnActionTriggerAnimation2']!,
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
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, -1.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(30.0),
                                            topRight: Radius.circular(30.0),
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.22,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(30.0),
                                                topRight: Radius.circular(30.0),
                                              ),
                                            ),
                                            alignment:
                                                AlignmentDirectional(1.0, -1.0),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, -1.0),
                                                  child: Transform.scale(
                                                    scaleX: 1.0,
                                                    scaleY: 1.0,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30.0,
                                                                  0.0,
                                                                  30.0,
                                                                  0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                        ),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            image:
                                                                DecorationImage(
                                                              fit: BoxFit.fill,
                                                              image:
                                                                  Image.asset(
                                                                'assets/images/asdsadsad.png',
                                                              ).image,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.35,
                                                                height: 0.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x00FFFFFF),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        AutoSizeText(
                                                                      '1. Металл',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .end,
                                                                      maxLines:
                                                                          1,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                Color(0xFFDDDDDD),
                                                                            fontSize:
                                                                                20.0,
                                                                            fontWeight:
                                                                                FontWeight.w900,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.1,
                                                                height: 0.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x00FFFFFF),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                30.0, 0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.5,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                        ),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: AutoSizeText(
                                                            '1. Нержавеющая сталь',
                                                            textAlign:
                                                                TextAlign.end,
                                                            maxLines: 1,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Color(
                                                                      0x00DDDDDD),
                                                                  fontSize:
                                                                      20.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                30.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                30.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        topRight:
                                                            Radius.circular(
                                                                35.0),
                                                      ),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.5,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    30.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    35.0),
                                                          ),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: AutoSizeText(
                                                              '1. Нержавеющая сталь',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              maxLines: 1,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: Color(
                                                                        0x00DDDDDD),
                                                                    fontSize:
                                                                        20.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(30.0),
                                                topRight: Radius.circular(30.0),
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.1,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(30.0),
                                                    topRight:
                                                        Radius.circular(30.0),
                                                  ),
                                                ),
                                                alignment: AlignmentDirectional(
                                                    0.0, -1.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30.0, 0.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.1,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.1,
                                            child: Stack(
                                              alignment: AlignmentDirectional(
                                                  1.0, 1.0),
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.1,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.1,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF800000),
                                                          shape:
                                                              BoxShape.circle,
                                                          border: Border.all(
                                                            color: Color(
                                                                0x001C2D92),
                                                          ),
                                                        ),
                                                      ),
                                                      Transform.translate(
                                                        offset:
                                                            Offset(0.0, 0.0),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.1,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.1,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFDDDDDD),
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                        ),
                                                      ).animateOnActionTrigger(
                                                          animationsMap[
                                                              'transformOnActionTriggerAnimation3']!,
                                                          hasBeenTriggered:
                                                              hasTransformTriggered3),
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {},
                                                        child:
                                                            Transform.translate(
                                                          offset:
                                                              Offset(0.0, 0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              if (!_model
                                                                  .animationGoing) {
                                                                _model
                                                                    .timerController
                                                                    .onStartTimer();
                                                                setState(() {
                                                                  _model.animationGoing =
                                                                      true;
                                                                });
                                                                if (_model
                                                                    .toggleText) {
                                                                  setState(() {
                                                                    _model.toggleText =
                                                                        false;
                                                                  });
                                                                  if (animationsMap[
                                                                          'containerOnActionTriggerAnimation2'] !=
                                                                      null) {
                                                                    animationsMap[
                                                                            'containerOnActionTriggerAnimation2']!
                                                                        .controller
                                                                        .reset();
                                                                  }
                                                                  await _model
                                                                      .pageViewController
                                                                      ?.animateToPage(
                                                                    1,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            500),
                                                                    curve: Curves
                                                                        .ease,
                                                                  );
                                                                  if (animationsMap[
                                                                          'containerOnActionTriggerAnimation2'] !=
                                                                      null) {
                                                                    animationsMap[
                                                                            'containerOnActionTriggerAnimation2']!
                                                                        .controller
                                                                        .forward(
                                                                            from:
                                                                                0.0);
                                                                  }
                                                                  if (_model
                                                                      .offToglfe) {
                                                                    if (animationsMap[
                                                                            'transformOnActionTriggerAnimation1'] !=
                                                                        null) {
                                                                      animationsMap[
                                                                              'transformOnActionTriggerAnimation1']!
                                                                          .controller
                                                                          .forward(
                                                                              from: 0.0);
                                                                    }
                                                                    if (animationsMap[
                                                                            'transformOnActionTriggerAnimation2'] !=
                                                                        null) {
                                                                      await animationsMap[
                                                                              'transformOnActionTriggerAnimation2']!
                                                                          .controller
                                                                          .forward(
                                                                              from: 0.0);
                                                                    }
                                                                    setState(
                                                                        () {
                                                                      _model.offToglfe =
                                                                          false;
                                                                    });
                                                                  } else {
                                                                    if (animationsMap[
                                                                            'stackOnActionTriggerAnimation2'] !=
                                                                        null) {
                                                                      animationsMap[
                                                                              'stackOnActionTriggerAnimation2']!
                                                                          .controller
                                                                          .reverse();
                                                                    }
                                                                    await Future.delayed(const Duration(
                                                                        milliseconds:
                                                                            300));
                                                                    setState(
                                                                        () {
                                                                      _model.toggleBG =
                                                                          !_model
                                                                              .toggleBG;
                                                                      _model.offToglfe =
                                                                          false;
                                                                    });
                                                                    if (animationsMap[
                                                                            'transformOnActionTriggerAnimation5'] !=
                                                                        null) {
                                                                      animationsMap[
                                                                              'transformOnActionTriggerAnimation5']!
                                                                          .controller
                                                                          .forward();
                                                                    }
                                                                    if (animationsMap[
                                                                            'transformOnActionTriggerAnimation6'] !=
                                                                        null) {
                                                                      animationsMap[
                                                                              'transformOnActionTriggerAnimation6']!
                                                                          .controller
                                                                          .forward();
                                                                    }
                                                                  }

                                                                  if (animationsMap[
                                                                          'transformOnActionTriggerAnimation4'] !=
                                                                      null) {
                                                                    animationsMap[
                                                                            'transformOnActionTriggerAnimation4']!
                                                                        .controller
                                                                        .reverse();
                                                                  }
                                                                  if (animationsMap[
                                                                          'transformOnActionTriggerAnimation3'] !=
                                                                      null) {
                                                                    animationsMap[
                                                                            'transformOnActionTriggerAnimation3']!
                                                                        .controller
                                                                        .reverse();
                                                                  }
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          milliseconds:
                                                                              300));
                                                                  if (animationsMap[
                                                                          'stackOnActionTriggerAnimation1'] !=
                                                                      null) {
                                                                    await animationsMap[
                                                                            'stackOnActionTriggerAnimation1']!
                                                                        .controller
                                                                        .reverse();
                                                                  }
                                                                } else {
                                                                  if (_model
                                                                      .offToglfe) {
                                                                    if (animationsMap[
                                                                            'transformOnActionTriggerAnimation1'] !=
                                                                        null) {
                                                                      animationsMap[
                                                                              'transformOnActionTriggerAnimation1']!
                                                                          .controller
                                                                          .forward(
                                                                              from: 0.0);
                                                                    }
                                                                    if (animationsMap[
                                                                            'transformOnActionTriggerAnimation2'] !=
                                                                        null) {
                                                                      await animationsMap[
                                                                              'transformOnActionTriggerAnimation2']!
                                                                          .controller
                                                                          .forward(
                                                                              from: 0.0);
                                                                    }
                                                                    if (animationsMap[
                                                                            'transformOnActionTriggerAnimation3'] !=
                                                                        null) {
                                                                      animationsMap[
                                                                              'transformOnActionTriggerAnimation3']!
                                                                          .controller
                                                                          .reverse();
                                                                    }
                                                                    if (animationsMap[
                                                                            'transformOnActionTriggerAnimation4'] !=
                                                                        null) {
                                                                      animationsMap[
                                                                              'transformOnActionTriggerAnimation4']!
                                                                          .controller
                                                                          .reverse();
                                                                    }
                                                                    await Future.delayed(const Duration(
                                                                        milliseconds:
                                                                            300));
                                                                    setState(
                                                                        () {
                                                                      _model.toggleBG =
                                                                          false;
                                                                      _model.offToglfe =
                                                                          false;
                                                                    });
                                                                    if (animationsMap[
                                                                            'stackOnActionTriggerAnimation1'] !=
                                                                        null) {
                                                                      await animationsMap[
                                                                              'stackOnActionTriggerAnimation1']!
                                                                          .controller
                                                                          .reverse();
                                                                    }
                                                                  } else {
                                                                    if (animationsMap[
                                                                            'stackOnActionTriggerAnimation1'] !=
                                                                        null) {
                                                                      animationsMap[
                                                                              'stackOnActionTriggerAnimation1']!
                                                                          .controller
                                                                          .forward(
                                                                              from: 0.0);
                                                                    }
                                                                    await Future.delayed(const Duration(
                                                                        milliseconds:
                                                                            300));
                                                                    setState(
                                                                        () {
                                                                      _model.toggleBG =
                                                                          false;
                                                                      _model.offToglfe =
                                                                          true;
                                                                    });
                                                                    if (animationsMap[
                                                                            'transformOnActionTriggerAnimation3'] !=
                                                                        null) {
                                                                      setState(() =>
                                                                          hasTransformTriggered3 =
                                                                              true);
                                                                      SchedulerBinding
                                                                          .instance
                                                                          .addPostFrameCallback((_) async => animationsMap['transformOnActionTriggerAnimation3']!
                                                                              .controller
                                                                              .forward(from: 0.0));
                                                                    }
                                                                    if (animationsMap[
                                                                            'transformOnActionTriggerAnimation4'] !=
                                                                        null) {
                                                                      setState(() =>
                                                                          hasTransformTriggered4 =
                                                                              true);
                                                                      SchedulerBinding
                                                                          .instance
                                                                          .addPostFrameCallback((_) async => animationsMap['transformOnActionTriggerAnimation4']!
                                                                              .controller
                                                                              .forward(from: 0.0));
                                                                    }
                                                                    if (animationsMap[
                                                                            'transformOnActionTriggerAnimation1'] !=
                                                                        null) {
                                                                      animationsMap[
                                                                              'transformOnActionTriggerAnimation1']!
                                                                          .controller
                                                                          .reverse();
                                                                    }
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'asdasdasd',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 4000),
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).secondary,
                                                                      ),
                                                                    );
                                                                    if (animationsMap[
                                                                            'transformOnActionTriggerAnimation2'] !=
                                                                        null) {
                                                                      animationsMap[
                                                                              'transformOnActionTriggerAnimation2']!
                                                                          .controller
                                                                          .reverse();
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            },
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x00DDDDDD),
                                                                image:
                                                                    DecorationImage(
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  image: Image
                                                                      .asset(
                                                                    'assets/images/krug_(51).png',
                                                                  ).image,
                                                                ),
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                          .animateOnPageLoad(
                                                              animationsMap[
                                                                  'transformOnPageLoadAnimation']!)
                                                          .animateOnActionTrigger(
                                                              animationsMap[
                                                                  'transformOnActionTriggerAnimation4']!,
                                                              hasBeenTriggered:
                                                                  hasTransformTriggered4),
                                                    ],
                                                  ),
                                                )
                                                    .animateOnPageLoad(
                                                        animationsMap[
                                                            'stackOnPageLoadAnimation']!)
                                                    .animateOnActionTrigger(
                                                      animationsMap[
                                                          'stackOnActionTriggerAnimation1']!,
                                                    ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.025,
                                          height: 0.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.1,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.1,
                                          child: Stack(
                                            children: [
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.1,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.1,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF800000),
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: Color(0x001C2D92),
                                                  ),
                                                ),
                                              ),
                                              Transform.translate(
                                                offset: Offset(0.0, 0.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFDDDDDD),
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'transformOnActionTriggerAnimation5']!,
                                              ),
                                              Transform.translate(
                                                offset: Offset(0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsets.all(3.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (!_model
                                                          .animationGoing) {
                                                        _model.timerController
                                                            .onStartTimer();
                                                        setState(() {
                                                          _model.animationGoing =
                                                              true;
                                                        });
                                                        if (_model.toggleText) {
                                                          if (_model
                                                              .offToglfe) {
                                                            if (animationsMap[
                                                                    'transformOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'transformOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0);
                                                            }
                                                            if (animationsMap[
                                                                    'transformOnActionTriggerAnimation2'] !=
                                                                null) {
                                                              await animationsMap[
                                                                      'transformOnActionTriggerAnimation2']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0);
                                                            }
                                                            if (animationsMap[
                                                                    'transformOnActionTriggerAnimation5'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'transformOnActionTriggerAnimation5']!
                                                                  .controller
                                                                  .reverse();
                                                            }
                                                            if (animationsMap[
                                                                    'transformOnActionTriggerAnimation6'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'transformOnActionTriggerAnimation6']!
                                                                  .controller
                                                                  .reverse();
                                                            }
                                                            await Future.delayed(
                                                                const Duration(
                                                                    milliseconds:
                                                                        300));
                                                            setState(() {
                                                              _model.offToglfe =
                                                                  !_model
                                                                      .offToglfe;
                                                            });
                                                            setState(() {
                                                              _model.toggleBG =
                                                                  !_model
                                                                      .toggleBG;
                                                            });
                                                            if (animationsMap[
                                                                    'stackOnActionTriggerAnimation2'] !=
                                                                null) {
                                                              await animationsMap[
                                                                      'stackOnActionTriggerAnimation2']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0);
                                                            }
                                                          } else {
                                                            if (animationsMap[
                                                                    'stackOnActionTriggerAnimation2'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'stackOnActionTriggerAnimation2']!
                                                                  .controller
                                                                  .reverse();
                                                            }
                                                            await Future.delayed(
                                                                const Duration(
                                                                    milliseconds:
                                                                        300));
                                                            setState(() {
                                                              _model.toggleBG =
                                                                  !_model
                                                                      .toggleBG;
                                                            });
                                                            if (animationsMap[
                                                                    'transformOnActionTriggerAnimation5'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'transformOnActionTriggerAnimation5']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0);
                                                            }
                                                            if (animationsMap[
                                                                    'transformOnActionTriggerAnimation6'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'transformOnActionTriggerAnimation6']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0);
                                                            }
                                                            if (animationsMap[
                                                                    'transformOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'transformOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .reverse();
                                                            }
                                                            if (animationsMap[
                                                                    'transformOnActionTriggerAnimation2'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'transformOnActionTriggerAnimation2']!
                                                                  .controller
                                                                  .reverse();
                                                            }
                                                            setState(() {
                                                              _model.offToglfe =
                                                                  !_model
                                                                      .offToglfe;
                                                            });
                                                          }
                                                        } else {
                                                          setState(() {
                                                            _model.toggleText =
                                                                true;
                                                          });
                                                          if (animationsMap[
                                                                  'containerOnActionTriggerAnimation3'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'containerOnActionTriggerAnimation3']!
                                                                .controller
                                                                .reset();
                                                          }
                                                          if (_model
                                                              .offToglfe) {
                                                            if (animationsMap[
                                                                    'transformOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'transformOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0);
                                                            }
                                                            if (animationsMap[
                                                                    'transformOnActionTriggerAnimation2'] !=
                                                                null) {
                                                              await animationsMap[
                                                                      'transformOnActionTriggerAnimation2']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0);
                                                            }
                                                            setState(() {
                                                              _model.offToglfe =
                                                                  !_model
                                                                      .offToglfe;
                                                            });
                                                            setState(() {
                                                              _model.toggleBG =
                                                                  !_model
                                                                      .toggleBG;
                                                            });
                                                          } else {
                                                            if (animationsMap[
                                                                    'stackOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'stackOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .forward();
                                                            }
                                                            await Future.delayed(
                                                                const Duration(
                                                                    milliseconds:
                                                                        300));
                                                            setState(() {
                                                              _model.toggleBG =
                                                                  !_model
                                                                      .toggleBG;
                                                            });
                                                            if (animationsMap[
                                                                    'transformOnActionTriggerAnimation3'] !=
                                                                null) {
                                                              setState(() =>
                                                                  hasTransformTriggered3 =
                                                                      true);
                                                              SchedulerBinding
                                                                  .instance
                                                                  .addPostFrameCallback((_) async => animationsMap[
                                                                          'transformOnActionTriggerAnimation3']!
                                                                      .controller
                                                                      .forward());
                                                            }
                                                            if (animationsMap[
                                                                    'transformOnActionTriggerAnimation4'] !=
                                                                null) {
                                                              setState(() =>
                                                                  hasTransformTriggered4 =
                                                                      true);
                                                              SchedulerBinding
                                                                  .instance
                                                                  .addPostFrameCallback((_) async => animationsMap[
                                                                          'transformOnActionTriggerAnimation4']!
                                                                      .controller
                                                                      .forward());
                                                            }
                                                          }

                                                          await _model
                                                              .pageViewController
                                                              ?.animateToPage(
                                                            2,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    500),
                                                            curve: Curves.ease,
                                                          );
                                                          if (animationsMap[
                                                                  'containerOnActionTriggerAnimation3'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'containerOnActionTriggerAnimation3']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          if (animationsMap[
                                                                  'transformOnActionTriggerAnimation5'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'transformOnActionTriggerAnimation5']!
                                                                .controller
                                                                .reverse();
                                                          }
                                                          if (animationsMap[
                                                                  'transformOnActionTriggerAnimation6'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'transformOnActionTriggerAnimation6']!
                                                                .controller
                                                                .reverse();
                                                          }
                                                          await Future.delayed(
                                                              const Duration(
                                                                  milliseconds:
                                                                      300));
                                                          if (animationsMap[
                                                                  'stackOnActionTriggerAnimation2'] !=
                                                              null) {
                                                            await animationsMap[
                                                                    'stackOnActionTriggerAnimation2']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                        }
                                                      }
                                                    },
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.1,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.1,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x00DDDDDD),
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          image: Image.asset(
                                                            'assets/images/tw2sad.png',
                                                          ).image,
                                                        ),
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'transformOnActionTriggerAnimation6']!,
                                              ),
                                            ],
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'stackOnActionTriggerAnimation2']!,
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.031,
                                          height: 0.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                          ),
                                        ),
                                        Builder(
                                          builder: (context) => InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                _model.toggleinfo = true;
                                              });
                                              await showAlignedDialog(
                                                context: context,
                                                isGlobal: true,
                                                avoidOverflow: false,
                                                targetAnchor:
                                                    AlignmentDirectional(
                                                            0.0, 0.0)
                                                        .resolve(
                                                            Directionality.of(
                                                                context)),
                                                followerAnchor:
                                                    AlignmentDirectional(
                                                            0.0, 0.0)
                                                        .resolve(
                                                            Directionality.of(
                                                                context)),
                                                builder: (dialogContext) {
                                                  return Material(
                                                    color: Colors.transparent,
                                                    child: GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: Container(
                                                        height: double.infinity,
                                                        width: double.infinity,
                                                        child:
                                                            InfoSpatMetlaWidget(
                                                          close: () async {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            },
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.07,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.07,
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 3.0,
                                                      shape:
                                                          const CircleBorder(),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.07,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.07,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0x001C2D92),
                                                              Color(0xFF1C2D92)
                                                            ],
                                                            stops: [0.0, 1.0],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    0.34, -1.0),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -0.34, 1.0),
                                                          ),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.07,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.07,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.asset(
                                                            'assets/images/krug_(48).png',
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 700),
                    curve: Curves.linear,
                    width: double.infinity,
                    height: _model.teflon
                        ? MediaQuery.sizeOf(context).height
                        : (MediaQuery.sizeOf(context).height * 0.0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0x2A101010),
                          Color(0xFF101010),
                          Color(0xFF101010)
                        ],
                        stops: [0.0, 0.1, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Container(
                    width: double.infinity,
                    height: _model.teflon
                        ? MediaQuery.sizeOf(context).height
                        : (MediaQuery.sizeOf(context).height * 0.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF101010),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ).animateOnActionTrigger(
                    animationsMap['containerOnActionTriggerAnimation4']!,
                  ),
                ),
                Opacity(
                  opacity: 0.7,
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.linear,
                      width: double.infinity,
                      height: _model.teflon
                          ? MediaQuery.sizeOf(context).height
                          : (MediaQuery.sizeOf(context).height * 0.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF101010),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.0,
                  child: FlutterFlowTimer(
                    initialTime: _model.timerMilliseconds,
                    getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                      value,
                      hours: false,
                      milliSecond: false,
                    ),
                    controller: _model.timerController,
                    updateStateInterval: Duration(milliseconds: 1500),
                    onChanged: (value, displayTime, shouldUpdate) {
                      _model.timerMilliseconds = value;
                      _model.timerValue = displayTime;
                      if (shouldUpdate) setState(() {});
                    },
                    onEnded: () async {
                      setState(() {
                        _model.animationGoing = false;
                      });
                      _model.timerController.onResetTimer();
                    },
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineSmall,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.linear,
                    width: double.infinity,
                    height: _model.loaded
                        ? (MediaQuery.sizeOf(context).height * 0.0)
                        : MediaQuery.sizeOf(context).height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0x0057636C),
                          Color(0x5657636C),
                          Color(0xFF57636C)
                        ],
                        stops: [0.0, 0.1, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 700),
                    curve: Curves.linear,
                    width: double.infinity,
                    height: _model.loaded
                        ? (MediaQuery.sizeOf(context).height * 0.0)
                        : MediaQuery.sizeOf(context).height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0x7857636C), Color(0xFB57636C)],
                        stops: [0.0, 0.1],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
              ],
            ),
          ).animateOnActionTrigger(
            animationsMap['containerOnActionTriggerAnimation1']!,
          ),
        ),
      ),
    );
  }
}
