import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'student_details_model.dart';
export 'student_details_model.dart';

class StudentDetailsWidget extends StatefulWidget {
  const StudentDetailsWidget({super.key});

  @override
  State<StudentDetailsWidget> createState() => _StudentDetailsWidgetState();
}

class _StudentDetailsWidgetState extends State<StudentDetailsWidget> {
  late StudentDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentDetailsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
          child: Container(
            width: 430.0,
            height: 500.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(300.0, 10.0, 0.0, 0.0),
                  child: Container(
                    width: 100.0,
                    height: 45.0,
                    decoration: const BoxDecoration(),
                    child: Stack(
                      children: [
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Visit Profile ',
                          options: FFButtonOptions(
                            height: 80.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                7.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Colors.transparent,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: const Color(0xFFFF0000),
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 0.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 0.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              75.0, 13.0, 0.0, 0.0),
                          child: Icon(
                            Icons.chevron_right_sharp,
                            color: Color(0xFFFF0000),
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(191.0, 50.0, 0.0, 0.0),
                  child: Text(
                    'Name',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w800,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Inter'),
                        ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(132.0, 81.0, 0.0, 0.0),
                  child: Text(
                    'Student Other Details',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF7A7A7A),
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Inter'),
                        ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(98.0, 130.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('RejectButton pressed ...');
                    },
                    text: 'Reject',
                    options: FFButtonOptions(
                      width: 109.7,
                      height: 39.7,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFFE6E6E6),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter',
                                color: Colors.black,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Inter'),
                              ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(222.7, 130.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('AcceptButton pressed ...');
                    },
                    text: 'Accept',
                    options: FFButtonOptions(
                      width: 109.7,
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFFFF0000),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: Colors.white,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
                          ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(21.0, 190.0, 0.0, 0.0),
                  child: Text(
                    'Interest:',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF7A7A7A),
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Inter'),
                        ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(97.0, 190.0, 0.0, 0.0),
                  child: Text(
                    'Role of interest of mentee',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF7A7A7A),
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Inter'),
                        ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(21.0, 220.0, 0.0, 0.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam aliquet eleifend augue vel hendrerit. In sm nunc, interdum ac luctus in, dignissim at ex. Pellentesque et sem placerat,\n\n(Short Intro about Mentee)',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: const Color(0xFF7A7A7A),
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Inter'),
                        ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(40.0, 380.0, 40.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Mentee Linkedin',
                    options: FFButtonOptions(
                      width: 400.0,
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding: const EdgeInsets.all(0.0),
                      color: const Color(0xFFFEEFE1),
                      textStyle: FlutterFlowTheme.of(context)
                          .titleSmall
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleSmallFamily,
                            color: const Color(0xFFFF0000),
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleSmallFamily),
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
                const Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(340.0, 385.0, 0.0, 0.0),
                  child: Icon(
                    Icons.chevron_right_sharp,
                    color: Color(0xFFFF0000),
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(183.0, 0.0, 0.0, 0.0),
          child: Container(
            width: 65.0,
            height: 65.0,
            decoration: const BoxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Group_(1).png',
                width: 65.0,
                height: 65.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(3.0, 35.0, 0.0, 0.0),
          child: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 0.0,
            buttonSize: 46.47,
            icon: const Icon(
              Icons.close_outlined,
              color: Color(0xFFFF0000),
              size: 28.47,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}
