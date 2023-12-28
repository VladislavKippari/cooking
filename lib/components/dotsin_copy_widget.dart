import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dotsin_copy_model.dart';
export 'dotsin_copy_model.dart';

class DotsinCopyWidget extends StatefulWidget {
  const DotsinCopyWidget({
    Key? key,
    this.parameter1,
    bool? parameter2,
    required this.transit,
  })  : this.parameter2 = parameter2 ?? false,
        super(key: key);

  final bool? parameter1;
  final bool parameter2;
  final Future<dynamic> Function()? transit;

  @override
  _DotsinCopyWidgetState createState() => _DotsinCopyWidgetState();
}

class _DotsinCopyWidgetState extends State<DotsinCopyWidget> {
  late DotsinCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DotsinCopyModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 3000));
      setState(() {
        _model.yellow = true;
        _model.blue = true;
      });
      await Future.delayed(const Duration(milliseconds: 700));
      await widget.transit?.call();
    });

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

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.linear,
                  width: _model.blue
                      ? MediaQuery.sizeOf(context).width
                      : (MediaQuery.sizeOf(context).width * 0.0),
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  decoration: BoxDecoration(
                    color: Color(0xFF57636C),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 900),
                  curve: Curves.linear,
                  width: _model.blue
                      ? MediaQuery.sizeOf(context).width
                      : (MediaQuery.sizeOf(context).width * 0.0),
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  decoration: BoxDecoration(
                    color: Color(0xFF57636C),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 700),
                  curve: Curves.linear,
                  width: _model.blue
                      ? MediaQuery.sizeOf(context).width
                      : (MediaQuery.sizeOf(context).width * 0.0),
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  decoration: BoxDecoration(
                    color: Color(0xFF57636C),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 900),
                  curve: Curves.linear,
                  width: _model.blue
                      ? MediaQuery.sizeOf(context).width
                      : (MediaQuery.sizeOf(context).width * 0.0),
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  decoration: BoxDecoration(
                    color: Color(0xFF57636C),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.0, 1.0),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.linear,
                  width: _model.blue
                      ? MediaQuery.sizeOf(context).width
                      : (MediaQuery.sizeOf(context).width * 0.0),
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  decoration: BoxDecoration(
                    color: Color(0xFF57636C),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ),
            ],
          ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.linear,
                    width: MediaQuery.sizeOf(context).width * 0.2,
                    height: !_model.blue
                        ? (MediaQuery.sizeOf(context).height * 0.0)
                        : MediaQuery.sizeOf(context).height,
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.sizeOf(context).height * 0.7,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF1C1E2D),
                          Color(0xFF1C1E2D),
                          Color(0x001C1E2D)
                        ],
                        stops: [0.0, 0.5, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 900),
                    curve: Curves.linear,
                    width: MediaQuery.sizeOf(context).width * 0.2,
                    height: !_model.blue
                        ? (MediaQuery.sizeOf(context).height * 0.0)
                        : MediaQuery.sizeOf(context).height,
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.sizeOf(context).height * 0.8,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF1C1E2D),
                          Color(0xFF1C1E2D),
                          Color(0x001C1E2D)
                        ],
                        stops: [0.0, 0.5, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 700),
                      curve: Curves.linear,
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      height: !_model.blue
                          ? (MediaQuery.sizeOf(context).height * 0.0)
                          : MediaQuery.sizeOf(context).height,
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.sizeOf(context).height * 0.9,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF1C1E2D),
                            Color(0xFF1C1E2D),
                            Color(0x001C1E2D)
                          ],
                          stops: [0.0, 0.5, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 900),
                      curve: Curves.linear,
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      height: !_model.blue
                          ? (MediaQuery.sizeOf(context).height * 0.0)
                          : MediaQuery.sizeOf(context).height,
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.sizeOf(context).height * 0.8,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF1C1E2D),
                            Color(0xFF1C1E2D),
                            Color(0x001C1E2D)
                          ],
                          stops: [0.0, 0.5, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.linear,
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      height: !_model.blue
                          ? (MediaQuery.sizeOf(context).height * 0.0)
                          : MediaQuery.sizeOf(context).height,
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.sizeOf(context).height * 0.7,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF1C1E2D),
                            Color(0xFF1C1E2D),
                            Color(0x001C1E2D)
                          ],
                          stops: [0.0, 0.5, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
