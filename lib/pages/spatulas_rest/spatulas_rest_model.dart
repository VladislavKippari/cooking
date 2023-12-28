import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/infotyf_spat_bam/infotyf_spat_bam_widget.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'spatulas_rest_widget.dart' show SpatulasRestWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SpatulasRestModel extends FlutterFlowModel<SpatulasRestWidget> {
  ///  Local state fields for this page.

  bool toggleStag = false;

  bool togglePan1 = false;

  bool togglePan2 = false;

  bool yellow = false;

  bool? blue = false;

  bool expand = false;

  bool textblure = false;

  bool toggleText = false;

  bool toggleBG = false;

  bool offToglfe = false;

  bool teflon = false;

  bool firetext = false;

  bool animationGoing = false;

  bool toggleinfo = false;

  bool loaded = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for Timer widget.
  int timerMilliseconds = 2000;
  String timerValue = StopWatchTimer.getDisplayTime(
    2000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    timerController.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
