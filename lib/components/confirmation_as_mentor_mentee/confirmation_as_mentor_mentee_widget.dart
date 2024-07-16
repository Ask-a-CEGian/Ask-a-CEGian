import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'confirmation_as_mentor_mentee_model.dart';
export 'confirmation_as_mentor_mentee_model.dart';

class ConfirmationAsMentorMenteeWidget extends StatefulWidget {
  const ConfirmationAsMentorMenteeWidget({
    super.key,
    required this.isMentor,
  });

  final bool? isMentor;

  @override
  State<ConfirmationAsMentorMenteeWidget> createState() =>
      _ConfirmationAsMentorMenteeWidgetState();
}

class _ConfirmationAsMentorMenteeWidgetState
    extends State<ConfirmationAsMentorMenteeWidget> {
  late ConfirmationAsMentorMenteeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmationAsMentorMenteeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
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
                          const EdgeInsetsDirectional.fromSTEB(370.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: 50.0,
                        height: 45.0,
                        decoration: const BoxDecoration(),
                        child: Stack(
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 61.0,
                              icon: const Icon(
                                Icons.cancel,
                                color: Colors.black,
                                size: 34.0,
                              ),
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(45.0, 100.0, 0.0, 0.0),
                      child: Text(
                        'Are you sure you want to continue as',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: Colors.black,
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w800,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Inter'),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          120.0, 180.0, 0.0, 0.0),
                      child: Text(
                        widget.isMentor! ? 'Mentor' : 'Mentee',
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
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          40.0, 250.0, 40.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'SignUp1',
                            queryParameters: {
                              'isMentor': serializeParam(
                                widget.isMentor,
                                ParamType.bool,
                              ),
                            }.withoutNulls,
                          );
                        },
                        text: 'YES, Proceed',
                        options: FFButtonOptions(
                          width: 400.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsets.all(0.0),
                          color: const Color(0xFFFEEFE1),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                color: const Color(0xFFFF0000),
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
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
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          340.0, 255.0, 0.0, 0.0),
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
          ],
        ),
      ],
    );
  }
}
