import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dots_model.dart';
export 'dots_model.dart';

class DotsWidget extends StatefulWidget {
  const DotsWidget({
    Key? key,
    this.itemIndex,
    required this.currentIndex,
  }) : super(key: key);

  final int? itemIndex;
  final int? currentIndex;

  @override
  _DotsWidgetState createState() => _DotsWidgetState();
}

class _DotsWidgetState extends State<DotsWidget> with TickerProviderStateMixin {
  late DotsModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.5, 1.5),
        ),
      ],
    ),
    'transformOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DotsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      alignment: AlignmentDirectional(0.0, 1.0),
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Builder(
                builder: (context) {
                  if (widget.itemIndex == widget.currentIndex) {
                    return Stack(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.03,
                          height: MediaQuery.sizeOf(context).width * 0.03,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                        Transform.scale(
                          scaleX: 0.8,
                          scaleY: 0.8,
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.03,
                            height: MediaQuery.sizeOf(context).width * 0.03,
                            decoration: BoxDecoration(
                              color: Color(0xFF009688),
                              shape: BoxShape.circle,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation2']!),
                        ).animateOnPageLoad(
                            animationsMap['transformOnPageLoadAnimation']!),
                      ],
                    );
                  } else if (widget.itemIndex != widget.currentIndex) {
                    return Stack(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.03,
                          height: MediaQuery.sizeOf(context).width * 0.03,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Transform.scale(
                          scaleX: 0.8,
                          scaleY: 0.8,
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.03,
                            height: MediaQuery.sizeOf(context).width * 0.03,
                            decoration: BoxDecoration(
                              color: Color(0xFF009688),
                              shape: BoxShape.circle,
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation3']!),
                        ),
                      ],
                    );
                  } else {
                    return Container(
                      width: MediaQuery.sizeOf(context).width * 0.03,
                      height: MediaQuery.sizeOf(context).width * 0.03,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: BoxShape.circle,
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
