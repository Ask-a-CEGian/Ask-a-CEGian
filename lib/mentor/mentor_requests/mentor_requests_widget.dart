import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/empty_list_widgets/no_requests_found/no_requests_found_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mentee/mentee_request_card/mentee_request_card_widget.dart';
import '/mentor/mentor_settings/mentor_settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mentor_requests_model.dart';
export 'mentor_requests_model.dart';

class MentorRequestsWidget extends StatefulWidget {
  const MentorRequestsWidget({super.key});

  @override
  State<MentorRequestsWidget> createState() => _MentorRequestsWidgetState();
}

class _MentorRequestsWidgetState extends State<MentorRequestsWidget> {
  late MentorRequestsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MentorRequestsModel());

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
        backgroundColor: Colors.white,
        drawer: SizedBox(
          width: 350.0,
          child: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.mentorSettingsModel,
              updateCallback: () => setState(() {}),
              child: const MentorSettingsWidget(),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xFF033FA4),
          automaticallyImplyLeading: false,
          leading: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ],
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Text(
                  'Pending Requests',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineMediumFamily,
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).headlineMediumFamily),
                      ),
                ),
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
                      child: Text(
                        'Requests that have been in the list more than 14 days will be automatically deleted',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: const Color(0xFF959595),
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts:
                                  GoogleFonts.asMap().containsKey('Inter'),
                            ),
                      ),
                    ),
                    StreamBuilder<List<RequestsRecord>>(
                      stream: queryRequestsRecord(
                        queryBuilder: (requestsRecord) => requestsRecord
                            .where(
                              'mentor_ref',
                              isEqualTo: currentUserReference,
                            )
                            .where(
                              'request_state',
                              isEqualTo: RequestState.PENDING.serialize(),
                            )
                            .orderBy('created_time', descending: true),
                      ),
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
                        List<RequestsRecord> listViewRequestsRecordList =
                            snapshot.data!;
                        if (listViewRequestsRecordList.isEmpty) {
                          return const Center(
                            child: SizedBox(
                              width: 350.0,
                              height: 400.0,
                              child: NoRequestsFoundWidget(
                                message: 'No Pending Requests',
                              ),
                            ),
                          );
                        }

                        return ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewRequestsRecordList.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 20.0),
                          itemBuilder: (context, listViewIndex) {
                            final listViewRequestsRecord =
                                listViewRequestsRecordList[listViewIndex];
                            return MenteeRequestCardWidget(
                              key: Key(
                                  'Keyvt5_${listViewIndex}_of_${listViewRequestsRecordList.length}'),
                              menteeRef: listViewRequestsRecord.menteeRef!,
                              requestRef: listViewRequestsRecord.reference,
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6E6E6),
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: const Color(0xFFE6E6E6),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 0.0,
                                buttonSize: 50.0,
                                hoverColor:
                                    FlutterFlowTheme.of(context).secondary,
                                icon: const Icon(
                                  Icons.cottage_outlined,
                                  color: Color(0xFF0B629F),
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed(
                                    'MentorHome',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                              ),
                              Text(
                                'Home',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: const Color(0xFF0B629F),
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 0.0,
                                buttonSize: 50.0,
                                hoverColor:
                                    FlutterFlowTheme.of(context).secondary,
                                hoverIconColor: const Color(0xFFFF0000),
                                icon: const Icon(
                                  Icons.mark_unread_chat_alt,
                                  color: Color(0xFF0B629F),
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed('chat_main_mentor');
                                },
                              ),
                              Text(
                                'Chats',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: const Color(0xFF0B629F),
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 0.0,
                                buttonSize: 50.0,
                                hoverColor:
                                    FlutterFlowTheme.of(context).secondary,
                                hoverIconColor: const Color(0xFFFF0000),
                                icon: const Icon(
                                  Icons.people_alt_sharp,
                                  color: Color(0xFFFF0000),
                                  size: 28.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed(
                                    'MentorRequests',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                              ),
                              Text(
                                'Requests',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: const Color(0xFFFF0000),
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 0.0,
                                buttonSize: 50.0,
                                hoverColor:
                                    FlutterFlowTheme.of(context).secondary,
                                hoverIconColor: const Color(0xFFFF0000),
                                icon: const Icon(
                                  Icons.settings_sharp,
                                  color: Color(0xFF0B629F),
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  scaffoldKey.currentState!.openDrawer();
                                },
                              ),
                              Text(
                                'Settings',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: const Color(0xFF0B629F),
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ],
                          ),
                        ]
                            .divide(const SizedBox(width: 16.0))
                            .addToStart(const SizedBox(width: 16.0))
                            .addToEnd(const SizedBox(width: 16.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
