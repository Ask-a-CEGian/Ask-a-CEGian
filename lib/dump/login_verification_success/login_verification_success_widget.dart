import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_verification_success_model.dart';
export 'login_verification_success_model.dart';

class LoginVerificationSuccessWidget extends StatefulWidget {
  const LoginVerificationSuccessWidget({super.key});

  @override
  State<LoginVerificationSuccessWidget> createState() =>
      _LoginVerificationSuccessWidgetState();
}

class _LoginVerificationSuccessWidgetState
    extends State<LoginVerificationSuccessWidget> {
  late LoginVerificationSuccessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginVerificationSuccessModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 500.0,
              ),
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  height: 434.0,
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
                                            'assets/images/20602937_6325228_1.svg',
                                            width: 434.0,
                                            height: 434.0,
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
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 424.0, 0.0, 0.0),
                            child: Container(
                              width: 503.0,
                              height: 551.0,
                              constraints: const BoxConstraints(
                                maxWidth: 500.0,
                              ),
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 35.0,
                                    color: Color(0xFF92E3A9),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                    spreadRadius: 25.0,
                                  )
                                ],
                              ),
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF92E3A9),
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
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 120.0, 20.0, 0.0),
                                        child: Container(
                                          width: 400.0,
                                          height: 200.0,
                                          constraints: const BoxConstraints(
                                            maxWidth: 500.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF76C08B),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Container(
                                                    constraints: const BoxConstraints(
                                                      maxWidth: 500.0,
                                                    ),
                                                    decoration: const BoxDecoration(),
                                                    child: const Icon(
                                                      Icons.lock_outline_sharp,
                                                      color: Colors.black,
                                                      size: 34.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 50.0, 0.0, 0.0),
                                                  child: Container(
                                                    constraints: const BoxConstraints(
                                                      maxWidth: 500.0,
                                                    ),
                                                    decoration: const BoxDecoration(),
                                                    child: Text(
                                                      'Congratulations! ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            fontSize: 24.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Inter'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 89.0, 0.0, 0.0),
                                                  child: Container(
                                                    constraints: const BoxConstraints(
                                                      maxWidth: 500.0,
                                                    ),
                                                    decoration: const BoxDecoration(),
                                                    child: Text(
                                                      'Email Verified!',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            useGoogleFonts:
                                                                GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        'Inter'),
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 150.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 380.0,
                                                    height: 80.0,
                                                    constraints: const BoxConstraints(
                                                      maxWidth: 500.0,
                                                    ),
                                                    decoration: const BoxDecoration(),
                                                    child: Stack(
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                  'SignUp5');
                                                            },
                                                            text: 'CONTINUE',
                                                            options:
                                                                FFButtonOptions(
                                                              height: 40.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: const Color(
                                                                  0xfffffffff),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: Colors
                                                                            .black,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey('Inter'),
                                                                      ),
                                                              elevation: 0.0,
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 0.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
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
                                  ],
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
        ),
      ),
    );
  }
}
