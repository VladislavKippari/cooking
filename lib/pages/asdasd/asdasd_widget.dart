import '/components/dots_widget.dart';
import '/components/dotsin_copy_widget.dart';
import '/components/dotsin_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'asdasd_model.dart';
export 'asdasd_model.dart';

class AsdasdWidget extends StatefulWidget {
  const AsdasdWidget({Key? key}) : super(key: key);

  @override
  _AsdasdWidgetState createState() => _AsdasdWidgetState();
}

class _AsdasdWidgetState extends State<AsdasdWidget>
    with TickerProviderStateMixin {
  late AsdasdModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasTransformTriggered1 = false;
  var hasTransformTriggered2 = false;
  var hasContainerTriggered2 = false;
  var hasDotsinCopyTriggered = false;
  final animationsMap = {
    'transformOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 0.524),
          end: Offset(0, 0),
        ),
        BlurEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(3.0, 3.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'transformOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: false,
      effects: [
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 0.524),
          end: Offset(0, 0),
        ),
        BlurEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(3.0, 3.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'transformOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        TiltEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0, 0.524),
          end: Offset(0, 0),
        ),
        BlurEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(3.0, 3.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'transformOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(5.0, 3.0),
        ),
      ],
    ),
    'transformOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.93, 0.93),
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(5.0, 3.0),
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(5.0, 3.0),
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
          end: Offset(-5.0, 3.0),
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
          end: Offset(-5.0, 3.0),
        ),
        ScaleEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.93, 0.93),
        ),
        MoveEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(-5.0, 3.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.9, 0.9),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(-92.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 1.0,
          end: 0.0,
        ),
      ],
    ),
    'dotsinCopyOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(-92.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 1.0,
          end: 0.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AsdasdModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.pageViewLenght = _model.pageViewLenght;
        _model.addToDots(0);
      });
      setState(() {
        _model.addToDots(1);
      });
      await Future.delayed(const Duration(milliseconds: 4000));
      setState(() {
        _model.offff = true;
      });
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    SchedulerBinding.instance.addPostFrameCallback((_) {
      animationsMap['transformOnPageLoadAnimation']!
          .controller
          .forward(from: 0.0);
    });

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
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: FlutterFlowVideoPlayer(
                            path:
                                'assets/videos/__(2000_x_1500_.)_(2000_x_1000_.)_(4).mp4',
                            videoType: VideoType.asset,
                            width: MediaQuery.sizeOf(context).width * 0.6,
                            height: MediaQuery.sizeOf(context).height * 0.4,
                            autoPlay: true,
                            looping: true,
                            showControls: false,
                            allowFullScreen: false,
                            allowPlaybackSpeedMenu: false,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.6,
                            height: MediaQuery.sizeOf(context).height * 0.4,
                            decoration: BoxDecoration(
                              color: Color(0x00666666),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/bvbbbb.png',
                                ).image,
                              ),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Transform.scale(
                    scaleX: 0.9,
                    scaleY: 0.9,
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.7,
                      decoration: BoxDecoration(
                        color: Color(0x00115FCC),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: Image.asset(
                            'assets/images/_2.png',
                          ).image,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100.0,
                      height: MediaQuery.sizeOf(context).height * 0.07,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                    Stack(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 0.6,
                          child: PageView(
                            controller: _model.pageViewController ??=
                                PageController(initialPage: 0),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Transform.scale(
                                  scaleX: -1.0,
                                  scaleY: 1.0,
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.5,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                      image: DecorationImage(
                                        fit: BoxFit.contain,
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        image: Image.asset(
                                          'assets/images/__(1000_x_1000_.)_(24).png',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                      border: Border.all(
                                        color: Color(0x00009688),
                                      ),
                                    ),
                                  ),
                                )
                                    .animateOnPageLoad(animationsMap[
                                        'transformOnPageLoadAnimation']!)
                                    .animateOnActionTrigger(
                                        animationsMap[
                                            'transformOnActionTriggerAnimation1']!,
                                        hasBeenTriggered:
                                            hasTransformTriggered1),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Transform.scale(
                                  scaleX: -1.0,
                                  scaleY: 1.0,
                                  child: Builder(
                                    builder: (context) {
                                      if (FFAppState().panDone) {
                                        return Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.5,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              alignment: AlignmentDirectional(
                                                  1.0, 0.0),
                                              image: Image.asset(
                                                'assets/images/krug_(12).png',
                                              ).image,
                                            ),
                                          ),
                                        );
                                      } else {
                                        return Transform.scale(
                                          scaleX: -1.0,
                                          scaleY: 1.0,
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.5,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  'assets/images/krug_(13).png',
                                                ).image,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ).animateOnActionTrigger(
                                    animationsMap[
                                        'transformOnActionTriggerAnimation2']!,
                                    hasBeenTriggered: hasTransformTriggered2),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ClipRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 3.0,
                      sigmaY: 3.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height * 0.7,
                      decoration: BoxDecoration(
                        color: Color(0x00115FCC),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: Image.asset(
                            'assets/images/thbnmm.png',
                          ).image,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.68,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.asset(
                        'assets/images/_2.png',
                      ).image,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Transform.translate(
                    offset: Offset(0.0, 0.0),
                    child: Opacity(
                      opacity: 0.3,
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.5,
                          height: MediaQuery.sizeOf(context).height * 0.55,
                          decoration: BoxDecoration(),
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Builder(
                                  builder: (context) {
                                    final huh = _model.dots.toList();
                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children:
                                          List.generate(huh.length, (huhIndex) {
                                        final huhItem = huh[huhIndex];
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            wrapWithModel(
                                              model: _model.dotsModels.getModel(
                                                huhItem.toString(),
                                                huhIndex,
                                              ),
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: DotsWidget(
                                                key: Key(
                                                  'Key24u_${huhItem.toString()}',
                                                ),
                                                itemIndex: huhItem,
                                                currentIndex:
                                                    _model.currentIndex!,
                                              ),
                                            ),
                                          ],
                                        );
                                      }).divide(SizedBox(width: 20.0)),
                                    );
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
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height * 0.5,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(90.0),
                                          bottomRight: Radius.circular(90.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.1,
                                        child: Stack(
                                          children: [
                                            Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Container(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.1,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: Image.asset(
                                                          'assets/images/asdasdasdqqq.png',
                                                        ).image,
                                                      ),
                                                    ),
                                                    child: ClipRect(
                                                      child: ImageFiltered(
                                                        imageFilter:
                                                            ImageFilter.blur(
                                                          sigmaX: 1.0,
                                                          sigmaY: 1.0,
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      3.0,
                                                                      0.0,
                                                                      3.0,
                                                                      0.0),
                                                          child: Transform
                                                              .translate(
                                                            offset: Offset(
                                                                0.0, -20.0),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            3.0,
                                                                            3.0,
                                                                            3.0,
                                                                            3.0),
                                                                child:
                                                                    AutoSizeText(
                                                                  'О кухне',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: Color(
                                                                            0xFF1C2D92),
                                                                        fontSize:
                                                                            60.0,
                                                                        letterSpacing:
                                                                            1.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                              ),
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
                                                          0.0, 0.0),
                                                  child: Transform.translate(
                                                    offset: Offset(0.0, -15.0),
                                                    child: Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.1,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  3.0),
                                                          child: AutoSizeText(
                                                            'О кухне',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Color(
                                                                      0xFFF8F8F8),
                                                                  fontSize:
                                                                      60.0,
                                                                  letterSpacing:
                                                                      1.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
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
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Transform.scale(
                  scaleX: 1.0,
                  scaleY: 1.0,
                  child: Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: MediaQuery.sizeOf(context).height * 0.7,
                      decoration: BoxDecoration(),
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Transform.translate(
                          offset: Offset(0.0, 0.0),
                          child: Stack(
                            children: [
                              Transform.scale(
                                scaleX: 0.6,
                                scaleY: 1.0,
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.1,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0x00009688),
                                        Color(0xA6009688)
                                      ],
                                      stops: [0.0, 1.0],
                                      begin: AlignmentDirectional(1.0, 0.0),
                                      end: AlignmentDirectional(-1.0, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(60.0),
                                    border: Border.all(
                                      color: Color(0x00009688),
                                    ),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 0.0),
                                    child: Stack(
                                      children: [
                                        Transform.translate(
                                          offset: Offset(0.0, 0.0),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Container(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.2,
                                              decoration: BoxDecoration(
                                                color: Color(0x00009688),
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 20.0, 0.0),
                                                child: AutoSizeText(
                                                  'Сковородки',
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Colors.transparent,
                                                        fontSize: 70.0,
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
                              Transform.scale(
                                scaleX: 0.7,
                                scaleY: 0.7,
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(60.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 20.0, 0.0),
                                    child: Stack(
                                      children: [
                                        Transform.translate(
                                          offset: Offset(0.0, 0.0),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Container(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.2,
                                              decoration: BoxDecoration(
                                                color: Color(0x00009688),
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 20.0, 0.0),
                                                child: AutoSizeText(
                                                  'Сковородки',
                                                  maxLines: 1,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Colors.transparent,
                                                        fontSize: 70.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Transform.translate(
                                            offset: Offset(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.4,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.2,
                                                child: PageView(
                                                  controller:
                                                      _model.btnsController ??=
                                                          PageController(
                                                              initialPage: 0),
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 1.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x0039D2C0),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Transform.scale(
                                                          scaleX: 1.0,
                                                          scaleY: 1.0,
                                                          child: Stack(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.45,
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.2,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Transform
                                                                    .translate(
                                                                  offset:
                                                                      Offset(
                                                                          0.0,
                                                                          -3.0),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0x00249689),
                                                                        borderRadius:
                                                                            BorderRadius.circular(30.0),
                                                                      ),
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          ClipRect(
                                                                        child:
                                                                            ImageFiltered(
                                                                          imageFilter:
                                                                              ImageFilter.blur(
                                                                            sigmaX:
                                                                                2.0,
                                                                            sigmaY:
                                                                                2.0,
                                                                          ),
                                                                          child:
                                                                              AutoSizeText(
                                                                            'Сковородки',
                                                                            maxLines:
                                                                                1,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: Color(0xFF000104),
                                                                                  fontSize: 70.0,
                                                                                  letterSpacing: 0.12,
                                                                                  fontWeight: FontWeight.w600,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Transform
                                                                  .translate(
                                                                offset: Offset(
                                                                    0.0, 0.0),
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
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x00249689),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0.0),
                                                                    ),
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        'Сковородки',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            1,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Color(0xFFF8F8F8),
                                                                              fontSize: 70.0,
                                                                              letterSpacing: 0.12,
                                                                              fontWeight: FontWeight.bold,
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
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 1.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.45,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x0039D2C0),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Transform.scale(
                                                          scaleX: 1.0,
                                                          scaleY: 1.0,
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                double.infinity,
                                                            child: Stack(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.45,
                                                                  height: MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.2,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Transform
                                                                      .translate(
                                                                    offset:
                                                                        Offset(
                                                                            0.0,
                                                                            -3.0),
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0x00249689),
                                                                          borderRadius:
                                                                              BorderRadius.circular(30.0),
                                                                        ),
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            ClipRect(
                                                                          child:
                                                                              ImageFiltered(
                                                                            imageFilter:
                                                                                ImageFilter.blur(
                                                                              sigmaX: 2.0,
                                                                              sigmaY: 2.0,
                                                                            ),
                                                                            child:
                                                                                AutoSizeText(
                                                                              'Лопатки',
                                                                              maxLines: 1,
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: Color(0xFF000104),
                                                                                    fontSize: 70.0,
                                                                                    letterSpacing: 0.12,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Transform
                                                                    .translate(
                                                                  offset:
                                                                      Offset(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.45,
                                                                      height: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0x00249689),
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                      ),
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        'Лопатки',
                                                                        maxLines:
                                                                            1,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Color(0xFFF8F8F8),
                                                                              fontSize: 70.0,
                                                                              letterSpacing: 0.12,
                                                                              fontWeight: FontWeight.bold,
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
                                                    ),
                                                  ],
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
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.25,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.25,
                                child: Stack(
                                  children: [
                                    Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  50.0, 0.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Color(0xFF1C2D92),
                                                width: 10.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Transform.translate(
                                          offset: Offset(-7.0, -5.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 0.0, 0.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Transform.translate(
                                          offset: Offset(-7.0, -5.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 0.0, 0.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'transformOnActionTriggerAnimation3']!,
                                        ),
                                        Transform.translate(
                                          offset: Offset(-7.0, -5.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (animationsMap[
                                                        'transformOnActionTriggerAnimation3'] !=
                                                    null) {
                                                  animationsMap[
                                                          'transformOnActionTriggerAnimation3']!
                                                      .controller
                                                      .forward(from: 0.0)
                                                      .whenComplete(animationsMap[
                                                              'transformOnActionTriggerAnimation3']!
                                                          .controller
                                                          .reverse);
                                                }
                                                if (animationsMap[
                                                        'transformOnActionTriggerAnimation4'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'transformOnActionTriggerAnimation4']!
                                                      .controller
                                                      .forward(from: 0.0)
                                                      .whenComplete(animationsMap[
                                                              'transformOnActionTriggerAnimation4']!
                                                          .controller
                                                          .reverse);
                                                }
                                                if (_model
                                                        .pageViewCurrentIndex ==
                                                    1) {
                                                  unawaited(
                                                    () async {
                                                      await _model
                                                          .btnsController
                                                          ?.animateToPage(
                                                        0,
                                                        duration: Duration(
                                                            milliseconds: 500),
                                                        curve: Curves.ease,
                                                      );
                                                    }(),
                                                  );
                                                  await _model
                                                      .pageViewController
                                                      ?.animateToPage(
                                                    0,
                                                    duration: Duration(
                                                        milliseconds: 500),
                                                    curve: Curves.ease,
                                                  );
                                                  if (animationsMap[
                                                          'transformOnActionTriggerAnimation1'] !=
                                                      null) {
                                                    setState(() =>
                                                        hasTransformTriggered1 =
                                                            true);
                                                    SchedulerBinding.instance
                                                        .addPostFrameCallback(
                                                            (_) async =>
                                                                animationsMap[
                                                                        'transformOnActionTriggerAnimation1']!
                                                                    .controller
                                                                    .forward(
                                                                        from:
                                                                            0.0));
                                                  }
                                                  if (animationsMap[
                                                          'transformOnActionTriggerAnimation2'] !=
                                                      null) {
                                                    animationsMap[
                                                            'transformOnActionTriggerAnimation2']!
                                                        .controller
                                                        .reset();
                                                  }
                                                  setState(() {
                                                    _model.currentIndex =
                                                        _model.currentIndex! +
                                                            -1;
                                                  });
                                                } else {
                                                  unawaited(
                                                    () async {
                                                      await _model
                                                          .btnsController
                                                          ?.animateToPage(
                                                        1,
                                                        duration: Duration(
                                                            milliseconds: 500),
                                                        curve: Curves.ease,
                                                      );
                                                    }(),
                                                  );
                                                  await _model
                                                      .pageViewController
                                                      ?.animateToPage(
                                                    1,
                                                    duration: Duration(
                                                        milliseconds: 500),
                                                    curve: Curves.ease,
                                                  );
                                                  if (animationsMap[
                                                          'transformOnActionTriggerAnimation2'] !=
                                                      null) {
                                                    setState(() =>
                                                        hasTransformTriggered2 =
                                                            true);
                                                    SchedulerBinding.instance
                                                        .addPostFrameCallback(
                                                            (_) async =>
                                                                animationsMap[
                                                                        'transformOnActionTriggerAnimation2']!
                                                                    .controller
                                                                    .forward(
                                                                        from:
                                                                            0.0));
                                                  }
                                                  if (animationsMap[
                                                          'transformOnActionTriggerAnimation1'] !=
                                                      null) {
                                                    animationsMap[
                                                            'transformOnActionTriggerAnimation1']!
                                                        .controller
                                                        .reset();
                                                  }
                                                  setState(() {
                                                    _model.currentIndex = 1;
                                                  });
                                                }
                                              },
                                              child: Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  image: DecorationImage(
                                                    fit: BoxFit.contain,
                                                    image: Image.asset(
                                                      'assets/images/krug_(15).png',
                                                    ).image,
                                                  ),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'transformOnActionTriggerAnimation4']!,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 1.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.25,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.25,
                                  child: Stack(
                                    alignment: AlignmentDirectional(1.0, 1.0),
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 50.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Color(0xFF1C2D92),
                                                  width: 30.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(7.0, -5.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 50.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Transform.translate(
                                            offset: Offset(7.0, -5.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 50.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                            ),
                                          ).animateOnActionTrigger(
                                            animationsMap[
                                                'transformOnActionTriggerAnimation5']!,
                                          ),
                                          Transform.translate(
                                            offset: Offset(7.0, -5.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 50.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if (animationsMap[
                                                          'transformOnActionTriggerAnimation5'] !=
                                                      null) {
                                                    animationsMap[
                                                            'transformOnActionTriggerAnimation5']!
                                                        .controller
                                                        .forward(from: 0.0)
                                                        .whenComplete(animationsMap[
                                                                'transformOnActionTriggerAnimation5']!
                                                            .controller
                                                            .reverse);
                                                  }
                                                  if (animationsMap[
                                                          'transformOnActionTriggerAnimation6'] !=
                                                      null) {
                                                    await animationsMap[
                                                            'transformOnActionTriggerAnimation6']!
                                                        .controller
                                                        .forward(from: 0.0)
                                                        .whenComplete(animationsMap[
                                                                'transformOnActionTriggerAnimation6']!
                                                            .controller
                                                            .reverse);
                                                  }
                                                  if (_model
                                                          .pageViewCurrentIndex ==
                                                      1) {
                                                    unawaited(
                                                      () async {
                                                        await _model
                                                            .btnsController
                                                            ?.animateToPage(
                                                          0,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  500),
                                                          curve: Curves.ease,
                                                        );
                                                      }(),
                                                    );
                                                    await _model
                                                        .pageViewController
                                                        ?.animateToPage(
                                                      0,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.ease,
                                                    );
                                                    if (animationsMap[
                                                            'transformOnActionTriggerAnimation1'] !=
                                                        null) {
                                                      setState(() =>
                                                          hasTransformTriggered1 =
                                                              true);
                                                      SchedulerBinding.instance
                                                          .addPostFrameCallback(
                                                              (_) async => animationsMap[
                                                                      'transformOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                    }
                                                    if (animationsMap[
                                                            'transformOnActionTriggerAnimation2'] !=
                                                        null) {
                                                      animationsMap[
                                                              'transformOnActionTriggerAnimation2']!
                                                          .controller
                                                          .reset();
                                                    }
                                                    setState(() {
                                                      _model.currentIndex = 0;
                                                    });
                                                  } else {
                                                    unawaited(
                                                      () async {
                                                        await _model
                                                            .btnsController
                                                            ?.nextPage(
                                                          duration: Duration(
                                                              milliseconds:
                                                                  300),
                                                          curve: Curves.ease,
                                                        );
                                                      }(),
                                                    );
                                                    await _model
                                                        .pageViewController
                                                        ?.nextPage(
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                      curve: Curves.ease,
                                                    );
                                                    if (animationsMap[
                                                            'transformOnActionTriggerAnimation2'] !=
                                                        null) {
                                                      setState(() =>
                                                          hasTransformTriggered2 =
                                                              true);
                                                      SchedulerBinding.instance
                                                          .addPostFrameCallback(
                                                              (_) async => animationsMap[
                                                                      'transformOnActionTriggerAnimation2']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                    }
                                                    if (animationsMap[
                                                            'transformOnActionTriggerAnimation1'] !=
                                                        null) {
                                                      animationsMap[
                                                              'transformOnActionTriggerAnimation1']!
                                                          .controller
                                                          .reset();
                                                    }
                                                    setState(() {
                                                      _model.currentIndex = 1;
                                                    });
                                                  }
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    image: DecorationImage(
                                                      fit: BoxFit.contain,
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      image: Image.asset(
                                                        'assets/images/krug_(16).png',
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
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    height: MediaQuery.sizeOf(context).height * 0.67,
                    decoration: BoxDecoration(),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (animationsMap[
                                  'containerOnActionTriggerAnimation1'] !=
                              null) {
                            await animationsMap[
                                    'containerOnActionTriggerAnimation1']!
                                .controller
                                .forward(from: 0.0)
                                .whenComplete(animationsMap[
                                        'containerOnActionTriggerAnimation1']!
                                    .controller
                                    .reverse);
                          }
                          if (_model.currentIndex == 0) {
                            context.pushNamed('pans');
                          } else {
                            if (FFAppState().panDone &&
                                (_model.currentIndex == 1)) {
                              context.pushNamed('spatulas');
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Сначала сковородки',
                                    style: TextStyle(
                                      color: Color(0xFF212427),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            }
                          }
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0x001C2D92), Color(0xFF000104)],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(90.0),
                              bottomRight: Radius.circular(90.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: Image.asset(
                                    'assets/images/sd).png',
                                  ).image,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ).animateOnActionTrigger(
                        animationsMap['containerOnActionTriggerAnimation1']!,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 1.0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.linear,
                    width: _model.endTrans
                        ? (MediaQuery.sizeOf(context).width * 0.0)
                        : MediaQuery.sizeOf(context).width,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Material(
                              color: Colors.transparent,
                              elevation: 0.0,
                              shape: const CircleBorder(),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                height: MediaQuery.sizeOf(context).width * 0.5,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDDDDDD),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/krug_(25).png',
                                    ).image,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 5.0,
                                      color: Color(0x33000000),
                                      offset: Offset(2.0, 2.0),
                                      spreadRadius: 7.0,
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Stack(
                                children: [
                                  Stack(
                                    children: [
                                      Transform.scale(
                                        scaleX: 0.9,
                                        scaleY: 0.9,
                                        child: ClipRect(
                                          child: ImageFiltered(
                                            imageFilter: ImageFilter.blur(
                                              sigmaX: 5.0,
                                              sigmaY: 5.0,
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0x001E90FF),
                                                    Color(0x711E90FF),
                                                    Color(0x001E90FF)
                                                  ],
                                                  stops: [0.0, 0.5, 1.0],
                                                  begin: AlignmentDirectional(
                                                      1.0, 0.0),
                                                  end: AlignmentDirectional(
                                                      -1.0, 0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(90.0),
                                              ),
                                              child: Transform.scale(
                                                scaleX: 0.9,
                                                scaleY: 0.9,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Flexible(
                                                      child: AutoSizeText(
                                                        'Exploring kitchen',
                                                        maxLines: 1,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              color: Color(
                                                                  0x0014181B),
                                                              fontSize: 70.0,
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
                                    ],
                                  ),
                                  Transform.scale(
                                    scaleX: 0.9,
                                    scaleY: 0.9,
                                    child: ClipRect(
                                      child: ImageFiltered(
                                        imageFilter: ImageFilter.blur(
                                          sigmaX: 2.0,
                                          sigmaY: 2.0,
                                        ),
                                        child: Transform.translate(
                                          offset: Offset(0.0, -3.0),
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: AutoSizeText(
                                                    'Знакомство с кухней',
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFF000104),
                                                          fontSize: 70.0,
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
                                  Transform.scale(
                                    scaleX: 0.9,
                                    scaleY: 0.9,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: AutoSizeText(
                                            'Знакомство с кухней',
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Color(0xFF212427),
                                                  fontSize: 70.0,
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
                        wrapWithModel(
                          model: _model.dotsinModel,
                          updateCallback: () => setState(() {}),
                          child: DotsinWidget(
                            parameter1: false,
                            parameter2: false,
                          ),
                        ),
                        wrapWithModel(
                          model: _model.dotsinCopyModel,
                          updateCallback: () => setState(() {}),
                          child: DotsinCopyWidget(
                            parameter1: false,
                            parameter2: false,
                            transit: () async {
                              setState(() {
                                _model.endTrans = true;
                              });
                            },
                          ),
                        ).animateOnActionTrigger(
                            animationsMap[
                                'dotsinCopyOnActionTriggerAnimation']!,
                            hasBeenTriggered: hasDotsinCopyTriggered),
                      ],
                    ),
                  ).animateOnActionTrigger(
                      animationsMap['containerOnActionTriggerAnimation2']!,
                      hasBeenTriggered: hasContainerTriggered2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
