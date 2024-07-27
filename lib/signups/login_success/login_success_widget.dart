import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_success_model.dart';
export 'login_success_model.dart';

class LoginSuccessWidget extends StatefulWidget {
  const LoginSuccessWidget({
    super.key,
    required this.signedUp,
  });

  final bool? signedUp;

  @override
  State<LoginSuccessWidget> createState() => _LoginSuccessWidgetState();
}

class _LoginSuccessWidgetState extends State<LoginSuccessWidget>
    with TickerProviderStateMixin {
  late LoginSuccessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginSuccessModel());

    animationsMap.addAll({
      'buttonOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 800.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      constraints: const BoxConstraints(
                        maxWidth: 500.0,
                      ),
                      decoration: const BoxDecoration(),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width: 434.0,
                                  height: 400.0,
                                  constraints: const BoxConstraints(
                                    maxWidth: 500.0,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: SvgPicture.asset(
                                            Theme.of(context).brightness ==
                                                    Brightness.dark
                                                ? 'assets/images/20602937_6325228_1_(2).svg'
                                                : 'assets/images/20602937_6325228_1.svg',
                                            width: 434.0,
                                            height: 400.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 400.0, 0.0, 0.0),
                              child: Container(
                                width: 503.0,
                                height: double.infinity,
                                constraints: const BoxConstraints(
                                  maxWidth: 500.0,
                                  maxHeight: 600.0,
                                ),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      FlutterFlowTheme.of(context).primary,
                                      FlutterFlowTheme.of(context).secondary
                                    ],
                                    stops: const [0.0, 1.0],
                                    begin: const AlignmentDirectional(0.0, -1.0),
                                    end: const AlignmentDirectional(0, 1.0),
                                  ),
                                ),
                                child: Container(
                                  width: 100.0,
                                  height: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF92E3A9),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 36.0,
                                        color: Color(0xFF92E3A9),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                        spreadRadius: 35.0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 400.0, 24.0, 0.0),
                              child: Container(
                                width: 375.0,
                                height: 326.0,
                                constraints: const BoxConstraints(
                                  maxWidth: 500.0,
                                ),
                                decoration: const BoxDecoration(),
                                child: Container(
                                  width: 375.0,
                                  height: 326.0,
                                  decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 35.0,
                                        color: Color(0xFF92E3A9),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                        spreadRadius: 35.0,
                                      )
                                    ],
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF92E3A9),
                                        Color(0xFF92E3A9)
                                      ],
                                      stops: [0.0, 1.0],
                                      begin: AlignmentDirectional(0.0, -1.0),
                                      end: AlignmentDirectional(0, 1.0),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 50.0),
                                        child: FFButtonWidget(
                                          onPressed: () {
                                            print('Button pressed ...');
                                          },
                                          text: '',
                                          icon: const Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 65.0,
                                          ),
                                          options: FFButtonOptions(
                                            width: 109.0,
                                            height: 109.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: const Color(0xFF08505F),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts:
                                                      GoogleFonts.asMap()
                                                          .containsKey(
                                                              'Roboto'),
                                                ),
                                            elevation: 3.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(70.0),
                                              bottomRight:
                                                  Radius.circular(70.0),
                                              topLeft: Radius.circular(70.0),
                                              topRight: Radius.circular(70.0),
                                            ),
                                          ),
                                        )
                                            .animateOnPageLoad(animationsMap[
                                                'buttonOnPageLoadAnimation']!)
                                            .animateOnActionTrigger(
                                              animationsMap[
                                                  'buttonOnActionTriggerAnimation']!,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 40.0),
                                        child: Text(
                                          'LOGIN SUCCESSFUL',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                                fontSize: 22.0,
                                                letterSpacing: 1.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey('Roboto'),
                                              ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Container(
                                              constraints: const BoxConstraints(
                                                maxWidth: 500.0,
                                              ),
                                              decoration: const BoxDecoration(),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  if (widget.signedUp!) {
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.role,
                                                            '') ==
                                                        'Mentor') {
                                                      context.pushNamed(
                                                          'MentorForm');
                                                    } else {
                                                      context.pushNamed(
                                                          'MenteeForm');
                                                    }
                                                  } else {
                                                    if (valueOrDefault(
                                                            currentUserDocument
                                                                ?.role,
                                                            '') ==
                                                        'Admin') {
                                                      context
                                                          .goNamed('AdminHome');
                                                    } else if (currentUserDocument
                                                            ?.userState ==
                                                        UserState.UNVERIFIED) {
                                                      context.pushNamed(
                                                          'UnverifiedPage');
                                                    } else if (currentUserDocument
                                                            ?.userState ==
                                                        UserState.SUSPENDED) {
                                                      context.pushNamed(
                                                          'SuspendPage');
                                                    } else {
                                                      if (valueOrDefault(
                                                              currentUserDocument
                                                                  ?.role,
                                                              '') ==
                                                          'Mentor') {
                                                        context.goNamed(
                                                            'MentorHome');
                                                      } else {
                                                        context.goNamed(
                                                            'MenteeHome');
                                                      }
                                                    }
                                                  }
                                                },
                                                text: 'START EXPLORING',
                                                icon: const Icon(
                                                  Icons.person_search_sharp,
                                                  size: 18.0,
                                                ),
                                                options: FFButtonOptions(
                                                  width: 200.0,
                                                  height: 50.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: const Color(0xFF1A1764),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmallFamily),
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
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
      ),
    );
  }
}
