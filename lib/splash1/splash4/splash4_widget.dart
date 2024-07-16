import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'splash4_model.dart';
export 'splash4_model.dart';

class Splash4Widget extends StatefulWidget {
  const Splash4Widget({super.key});

  @override
  State<Splash4Widget> createState() => _Splash4WidgetState();
}

class _Splash4WidgetState extends State<Splash4Widget> {
  late Splash4Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Splash4Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('splash5');
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
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF1A0C27),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(197.0, 463.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, -1.0),
                  child: Container(
                    width: 24.35,
                    height: 24.35,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF9F56FC),
                          Color(0xFFFF26A7),
                          Color(0xFFFF9A7A),
                          Color(0xFFE2D66E)
                        ],
                        stops: [0.0, 0.0, 1.0, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(32.0),
                        bottomRight: Radius.circular(32.0),
                        topLeft: Radius.circular(32.0),
                        topRight: Radius.circular(32.0),
                      ),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        width: 2.0,
                      ),
                    ),
                    alignment: const AlignmentDirectional(-1.0, -1.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
