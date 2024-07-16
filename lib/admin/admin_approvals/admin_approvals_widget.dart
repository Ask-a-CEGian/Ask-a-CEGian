import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_approvals_model.dart';
export 'admin_approvals_model.dart';

class AdminApprovalsWidget extends StatefulWidget {
  const AdminApprovalsWidget({super.key});

  @override
  State<AdminApprovalsWidget> createState() => _AdminApprovalsWidgetState();
}

class _AdminApprovalsWidgetState extends State<AdminApprovalsWidget> {
  late AdminApprovalsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminApprovalsModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-6.11, -1.02),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(35.0, 200.0, 0.0, 0.0),
                      child: Container(
                        width: 390.0,
                        height: 130.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 15.0, 0.0, 0.0),
                              child: Container(
                                width: 53.0,
                                height: 53.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Group_(3).png',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  103.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'Lil Castro',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  103.0, 40.0, 0.0, 0.0),
                              child: Text(
                                'Student',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0xFF6D6D6D),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Inter'),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  173.0, 40.0, 0.0, 0.0),
                              child: Text(
                                'name@gmail.com',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color: const Color(0xFF6D6D6D),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey('Inter'),
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  30.0, 80.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('ProfileButton pressed ...');
                                },
                                text: 'Profile',
                                options: FFButtonOptions(
                                  width: 109.7,
                                  height: 39.63,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFFE6E6E6),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Inter'),
                                      ),
                                  elevation: 0.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  160.0, 80.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('AcceptButton pressed ...');
                                },
                                text: 'Accept',
                                options: FFButtonOptions(
                                  width: 109.7,
                                  height: 39.63,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFFFF0000),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        color: const Color(0xfffffffff),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Inter'),
                                      ),
                                  elevation: 0.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  280.0, 80.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('RejectButton pressed ...');
                                },
                                text: 'Review',
                                options: FFButtonOptions(
                                  width: 109.7,
                                  height: 39.63,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: const Color(0xFFE6E6E6),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Inter'),
                                      ),
                                  elevation: 0.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            40.0, 140.0, 0.0, 0.0),
                        child: Text(
                          'Approval Requests (4)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                fontSize: 24.0,
                                letterSpacing: 0.0,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Inter'),
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(1.0, 550.0, 0.0, 0.0),
                child: Container(
                  width: 428.0,
                  height: 100.0,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(90.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          buttonSize: 46.0,
                          icon: const Icon(
                            Icons.home_rounded,
                            color: Colors.black,
                            size: 26.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            195.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          buttonSize: 46.0,
                          icon: const Icon(
                            Icons.person_sharp,
                            color: Color(0xFFFF0000),
                            size: 28.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('AdminApprovals');
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            300.0, 0.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          buttonSize: 46.0,
                          icon: const Icon(
                            Icons.settings_outlined,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            92.0, 40.0, 0.0, 0.0),
                        child: Text(
                          'Home',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Inter',
                                color: Colors.black,
                                letterSpacing: 0.0,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Inter'),
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            200.0, 40.0, 0.0, 0.0),
                        child: Text(
                          'Approval',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Inter',
                                color: const Color(0xFFFF0000),
                                letterSpacing: 0.0,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Inter'),
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            300.0, 40.0, 0.0, 0.0),
                        child: Text(
                          'Settings',
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: 'Inter',
                                color: Colors.black,
                                letterSpacing: 0.0,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Inter'),
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
    );
  }
}
