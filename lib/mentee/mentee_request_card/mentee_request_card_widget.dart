import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mentor/student_details/student_details_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mentee_request_card_model.dart';
export 'mentee_request_card_model.dart';

class MenteeRequestCardWidget extends StatefulWidget {
  const MenteeRequestCardWidget({
    super.key,
    required this.menteeRef,
    required this.requestRef,
  });

  final DocumentReference? menteeRef;
  final DocumentReference? requestRef;

  @override
  State<MenteeRequestCardWidget> createState() =>
      _MenteeRequestCardWidgetState();
}

class _MenteeRequestCardWidgetState extends State<MenteeRequestCardWidget> {
  late MenteeRequestCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenteeRequestCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 24.0),
      child: FutureBuilder<UsersRecord>(
        future: UsersRecord.getDocumentOnce(widget.menteeRef!),
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

          final requestUsersRecord = snapshot.data!;

          return Material(
            color: Colors.transparent,
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Container(
              width: double.infinity,
              height: 140.0,
              decoration: BoxDecoration(
                color: const Color(0xFFE6E6E6),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5.0,
                    color: Color(0x162D3A21),
                    offset: Offset(
                      0.0,
                      3.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: const Color(0xFF5C636B),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 70.0,
                          height: 70.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            valueOrDefault<String>(
                              requestUsersRecord.photoUrl,
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/ask-a-cegian-6q7f9f/assets/3l034mi77mah/Group_(1).svg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 25.0, 0.0, 0.0),
                            child: Text(
                              requestUsersRecord.displayName,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleMediumFamily,
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleMediumFamily),
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 12.0,
                    thickness: 1.0,
                    color: Color(0xFF5C636B),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: StudentDetailsWidget(
                                    menteeRef: widget.menteeRef!,
                                    requestRef: widget.requestRef!,
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          text: 'Review',
                          options: FFButtonOptions(
                            width: 90.0,
                            height: 35.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 2.0,
                            borderSide: const BorderSide(
                              color: Color(0xFFE6E6E6),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            await actions.acceptRequestAction(
                              widget.menteeRef!,
                              currentUserReference!,
                              widget.requestRef!,
                            );

                            await currentUserReference!.update({
                              ...mapToFirestore(
                                {
                                  'mentoring': FieldValue.arrayUnion(
                                      [widget.menteeRef]),
                                },
                              ),
                            });

                            await widget.menteeRef!.update({
                              ...mapToFirestore(
                                {
                                  'acceptedMentors': FieldValue.arrayUnion(
                                      [currentUserReference]),
                                },
                              ),
                            });

                            await ChatsRecord.collection.doc().set({
                              ...createChatsRecordData(
                                lastMessage: 'Say Hi!',
                                lastMessageTime: getCurrentTimestamp,
                              ),
                              ...mapToFirestore(
                                {
                                  'user_refs': functions.addMenteeMentorRefs(
                                      requestUsersRecord.reference,
                                      currentUserReference!),
                                  'user_names': functions.addMenteeMentorNames(
                                      requestUsersRecord.displayName,
                                      currentUserDisplayName),
                                },
                              ),
                            });
                          },
                          text: 'Accept',
                          options: FFButtonOptions(
                            width: 90.0,
                            height: 35.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFFFF0707),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 2.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
