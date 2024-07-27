import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'splash6_model.dart';
export 'splash6_model.dart';

class Splash6Widget extends StatefulWidget {
  const Splash6Widget({super.key});

  @override
  State<Splash6Widget> createState() => _Splash6WidgetState();
}

class _Splash6WidgetState extends State<Splash6Widget>
    with TickerProviderStateMixin {
  late Splash6Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Splash6Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('WelcomePagecopy');
    });

    animationsMap.addAll({
      'transformOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 1.0.ms,
            duration: 600.0.ms,
            begin: 5.0,
            end: -5.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          body: SafeArea(
            top: true,
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 932.0,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF9F56FC),
                            Color(0xFFFF26A7),
                            Color(0xFFFF9A7A),
                            Color(0xFFE2D66E)
                          ],
                          stops: [0.0, 0.0, 1.0, 1.0],
                          begin: AlignmentDirectional(1.0, 1.0),
                          end: AlignmentDirectional(-1.0, -1.0),
                        ),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          width: 2.0,
                        ),
                      ),
                      alignment: const AlignmentDirectional(0.0, 0.0),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Transform.rotate(
                      angle: 120.0 * (math.pi / 180),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('WelcomePagecopy');
                        },
                        child: Container(
                          width: 1123.71,
                          height: 1020.32,
                          decoration: const BoxDecoration(),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation']!),
                    ).animateOnPageLoad(
                        animationsMap['transformOnPageLoadAnimation']!),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
