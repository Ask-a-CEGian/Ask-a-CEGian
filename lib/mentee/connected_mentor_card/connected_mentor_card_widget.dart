import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'connected_mentor_card_model.dart';
export 'connected_mentor_card_model.dart';

class ConnectedMentorCardWidget extends StatefulWidget {
  const ConnectedMentorCardWidget({
    super.key,
    required this.mentorRef,
  });

  final DocumentReference? mentorRef;

  @override
  State<ConnectedMentorCardWidget> createState() =>
      _ConnectedMentorCardWidgetState();
}

class _ConnectedMentorCardWidgetState extends State<ConnectedMentorCardWidget> {
  late ConnectedMentorCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConnectedMentorCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<UsersRecord>(
      future: UsersRecord.getDocumentOnce(widget.mentorRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }

        final prevConUsersRecord = snapshot.data!;

        return Container(
          width: 180.0,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color(0xFF3C769D),
                offset: Offset(
                  0.0,
                  0.0,
                ),
              )
            ],
            gradient: const LinearGradient(
              colors: [Color(0xFF3C769D), Color(0xFF999992)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(-1.0, -0.87),
              end: AlignmentDirectional(1.0, 0.87),
            ),
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.network(
                    valueOrDefault<String>(
                      prevConUsersRecord.photoUrl,
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/ask-a-cegian-6q7f9f/assets/58j77idojgtm/Group_(1).png',
                    ),
                    width: 60.0,
                    height: 60.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                child: Text(
                  prevConUsersRecord.displayName,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: Colors.black,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 20.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (prevConUsersRecord.role == 'Mentor') {
                              context.pushNamed(
                                'MentorProfileView',
                                queryParameters: {
                                  'mentorDoc': serializeParam(
                                    prevConUsersRecord,
                                    ParamType.Document,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'mentorDoc': prevConUsersRecord,
                                },
                              );
                            } else {
                              context.pushNamed(
                                'MenteeProfileView',
                                queryParameters: {
                                  'menteeDoc': serializeParam(
                                    prevConUsersRecord,
                                    ParamType.Document,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  'menteeDoc': prevConUsersRecord,
                                },
                              );
                            }
                          },
                          text: 'Visit Profile',
                          options: FFButtonOptions(
                            width: 115.0,
                            height: 35.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFFE6E6E6),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: const Color(0xFFFF0000),
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 0.0,
                            borderSide: const BorderSide(
                              color: Color(0xFF082C3D),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
