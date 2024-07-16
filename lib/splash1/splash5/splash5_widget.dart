import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'splash5_model.dart';
export 'splash5_model.dart';

class Splash5Widget extends StatefulWidget {
  const Splash5Widget({super.key});

  @override
  State<Splash5Widget> createState() => _Splash5WidgetState();
}

class _Splash5WidgetState extends State<Splash5Widget> {
  late Splash5Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Splash5Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('splash6');
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
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(350.0, 463.22, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Transform.rotate(
                      angle: 45.0 * (math.pi / 180),
                      child: Container(
                        width: 24.35,
                        height: 24.35,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF9F56FC),
                              Color(0xFFFF26A7),
                              Color(0xFFFF9A7A),
                              Color(0xFFE2D66E)
                            ],
                            stops: [0.0, 1.0, 1.0, 1.0],
                            begin: AlignmentDirectional(1.0, -1.0),
                            end: AlignmentDirectional(-1.0, 1.0),
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32.0),
                            bottomRight: Radius.circular(32.0),
                            topLeft: Radius.circular(32.0),
                            topRight: Radius.circular(32.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(18.0, 395.0, 0.0, 0.0),
                child: Container(
                  width: 332.0,
                  height: 147.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1A0C27),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/text_container.png',
                      width: 300.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
