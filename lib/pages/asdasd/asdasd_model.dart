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
import 'asdasd_widget.dart' show AsdasdWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AsdasdModel extends FlutterFlowModel<AsdasdWidget> {
  ///  Local state fields for this page.

  int? pageViewLenght = 0;

  List<int> dots = [];
  void addToDots(int item) => dots.add(item);
  void removeFromDots(int item) => dots.remove(item);
  void removeAtIndexFromDots(int index) => dots.removeAt(index);
  void insertAtIndexInDots(int index, int item) => dots.insert(index, item);
  void updateDotsAtIndex(int index, Function(int) updateFn) =>
      dots[index] = updateFn(dots[index]);

  int? currentIndex = 0;

  bool yellow = false;

  bool blue = false;

  bool endTrans = false;

  bool offff = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Models for dots dynamic component.
  late FlutterFlowDynamicModels<DotsModel> dotsModels;
  // State field(s) for btns widget.
  PageController? btnsController;

  int get btnsCurrentIndex => btnsController != null &&
          btnsController!.hasClients &&
          btnsController!.page != null
      ? btnsController!.page!.round()
      : 0;
  // Model for dotsin component.
  late DotsinModel dotsinModel;
  // Model for dotsinCopy component.
  late DotsinCopyModel dotsinCopyModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dotsModels = FlutterFlowDynamicModels(() => DotsModel());
    dotsinModel = createModel(context, () => DotsinModel());
    dotsinCopyModel = createModel(context, () => DotsinCopyModel());
  }

  void dispose() {
    unfocusNode.dispose();
    dotsModels.dispose();
    dotsinModel.dispose();
    dotsinCopyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
