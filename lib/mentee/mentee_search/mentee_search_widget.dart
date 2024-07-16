import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/filters1_on_mentee_search/filters1_on_mentee_search_widget.dart';
import '/components/mentee_settings/mentee_settings_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mentee_search_model.dart';
export 'mentee_search_model.dart';

class MenteeSearchWidget extends StatefulWidget {
  const MenteeSearchWidget({super.key});

  @override
  State<MenteeSearchWidget> createState() => _MenteeSearchWidgetState();
}

class _MenteeSearchWidgetState extends State<MenteeSearchWidget> {
  late MenteeSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenteeSearchModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MenteeRecord>>(
      future: FFAppState().menteeRecord(
        requestFn: () => queryMenteeRecordOnce(
          queryBuilder: (menteeRecord) => menteeRecord.where(
            'mentee_user_ref',
            isEqualTo: currentUserReference,
          ),
          singleRecord: true,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<MenteeRecord> menteeSearchMenteeRecordList = snapshot.data!;

        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final menteeSearchMenteeRecord = menteeSearchMenteeRecordList.isNotEmpty
            ? menteeSearchMenteeRecordList.first
            : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.white,
            drawer: SizedBox(
              width: 362.0,
              child: Drawer(
                elevation: 16.0,
                child: wrapWithModel(
                  model: _model.menteeSettingsModel,
                  updateCallback: () => setState(() {}),
                  child: const MenteeSettingsWidget(),
                ),
              ),
            ),
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          44.0, 59.0, 0.0, 0.0),
                                      child: Container(
                                        width: 343.0,
                                        height: 36.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: SizedBox(
                                          width: 343.0,
                                          height: 36.0,
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: TextFormField(
                                                  controller:
                                                      _model.textController,
                                                  focusNode:
                                                      _model.textFieldFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.textController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: false,
                                                    labelText: '  ',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMediumFamily,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily),
                                                        ),
                                                    alignLabelWithHint: false,
                                                    hintText: 'search',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelSmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color:
                                                              const Color(0x9C3C4399),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts:
                                                              GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      'Inter'),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        const Color(0x1F767680),
                                                    contentPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(35.0, 0.0,
                                                                0.0, 0.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmallFamily,
                                                        color:
                                                            const Color(0x9C3C4399),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmallFamily),
                                                      ),
                                                  validator: _model
                                                      .textControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        310.0, 8.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.keyboard_voice,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 7.0, 0.0, 0.0),
                                                child: Icon(
                                                  Icons.search_sharp,
                                                  color: Color(0x9D3C4399),
                                                  size: 24.0,
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
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 52.0, 0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  icon: const Icon(
                                    Icons.keyboard_arrow_left_rounded,
                                    color: Color(0xbacdff0e00),
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    context.safePop();
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    21.0, 600.0, 0.0, 0.0),
                                child: Text(
                                  'Previously Connected',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Inter'),
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 640.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 200.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: StreamBuilder<List<MentorshipsRecord>>(
                                    stream: queryMentorshipsRecord(
                                      queryBuilder: (mentorshipsRecord) =>
                                          mentorshipsRecord.where(
                                        'mentee_ref',
                                        isEqualTo:
                                            menteeSearchMenteeRecord?.reference,
                                      ),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<MentorshipsRecord>
                                          gridViewMentorshipsRecordList =
                                          snapshot.data!;

                                      return GridView.builder(
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 10.0,
                                          mainAxisSpacing: 10.0,
                                          childAspectRatio: 1.0,
                                        ),
                                        scrollDirection: Axis.vertical,
                                        itemCount: gridViewMentorshipsRecordList
                                            .length,
                                        itemBuilder: (context, gridViewIndex) {
                                          final gridViewMentorshipsRecord =
                                              gridViewMentorshipsRecordList[
                                                  gridViewIndex];
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    43.0, 0.0, 0.0, 0.0),
                                            child: StreamBuilder<MentorRecord>(
                                              stream: MentorRecord.getDocument(
                                                  gridViewMentorshipsRecord
                                                      .mentorRef!),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }

                                                final prevCon1MentorRecord =
                                                    snapshot.data!;

                                                return Container(
                                                  width: 180.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xFFE6E6E6),
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        color:
                                                            Color(0x34090F13),
                                                        offset: Offset(
                                                          0.0,
                                                          0.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        40.0,
                                                                        120.0,
                                                                        8.0,
                                                                        0.0),
                                                            child: Text(
                                                              '${valueOrDefault<String>(
                                                                prevCon1MentorRecord
                                                                    .followersCount
                                                                    .toString(),
                                                                '0',
                                                              )} followers',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .labelSmallFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).labelSmallFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        35.0,
                                                                        90.0,
                                                                        8.0,
                                                                        0.0),
                                                            child: Text(
                                                              prevCon1MentorRecord
                                                                  .mentorName,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: Colors
                                                                        .black,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        45.0,
                                                                        25.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  prevCon1MentorRecord
                                                                      .photoUrl,
                                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/ask-a-cegian-6q7f9f/assets/58j77idojgtm/Group_(1).png',
                                                                ),
                                                                width: 60.0,
                                                                height: 60.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        150.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Send request',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: const Color(
                                                                        0xFFFF0000),
                                                                    fontSize:
                                                                        17.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            'Inter'),
                                                                    lineHeight:
                                                                        3.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        120.0,
                                                                        162.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              buttonSize: 46.0,
                                                              icon: const Icon(
                                                                Icons
                                                                    .arrow_forward_ios_outlined,
                                                                color: Color(
                                                                    0xbacdff0e00),
                                                                size: 15.0,
                                                              ),
                                                              onPressed: () {
                                                                print(
                                                                    'IconButton pressed ...');
                                                              },
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        170.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                await RequestsRecord
                                                                    .collection
                                                                    .doc()
                                                                    .set(
                                                                        createRequestsRecordData(
                                                                      mentorRef:
                                                                          prevCon1MentorRecord
                                                                              .reference,
                                                                      createdTime:
                                                                          getCurrentTimestamp,
                                                                      menteeRef:
                                                                          menteeSearchMenteeRecord
                                                                              ?.reference,
                                                                      requestState:
                                                                          RequestState
                                                                              .PENDING,
                                                                    ));
                                                              },
                                                              text: '',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 200.0,
                                                                height: 40.0,
                                                                padding: const EdgeInsetsDirectional
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
                                                                color: Colors
                                                                    .transparent,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily,
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).titleSmallFamily),
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
                                                                            8.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 100.0, 0.0, 0.0),
                                child: Container(
                                  width: 100.0,
                                  height: 50.0,
                                  decoration: const BoxDecoration(),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            44.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'Filter',
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Inter',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey('Inter'),
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 0.0, 0.0),
                                        child: Container(
                                          width: 24.0,
                                          height: 24.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: SvgPicture.asset(
                                              'assets/images/Filter_alt.svg',
                                              width: 300.0,
                                              height: 200.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: const SizedBox(
                                                    height: 500.0,
                                                    child:
                                                        Filters1OnMenteeSearchWidget(),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        text: 'Filter\n',
                                        options: FFButtonOptions(
                                          width: 290.0,
                                          height: 80.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  40.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Colors.transparent,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmallFamily,
                                                color: const Color(0xFFFF0000),
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmallFamily),
                                              ),
                                          elevation: 0.0,
                                          borderSide: const BorderSide(
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                21.0, 170.0, 0.0, 0.0),
                            child: Text(
                              'Suggestions',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey('Inter'),
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 210.0, 0.0, 0.0),
                            child: Container(
                              width: 388.0,
                              height: 360.0,
                              decoration: const BoxDecoration(),
                              child: Stack(
                                children: [
                                  StreamBuilder<List<MentorRecord>>(
                                    stream: queryMentorRecord(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<MentorRecord>
                                          listViewMentorRecordList =
                                          snapshot.data!;

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            listViewMentorRecordList.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final listViewMentorRecord =
                                              listViewMentorRecordList[
                                                  listViewIndex];
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 10.0, 0.0, 10.0),
                                            child: Container(
                                              decoration: const BoxDecoration(),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(80.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 100.0,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Stack(
                                                        children: [
                                                          SizedBox(
                                                            width: 200.0,
                                                            child: Stack(
                                                              children: [
                                                                Text(
                                                                  listViewMentorRecord
                                                                      .mentorName,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: Colors
                                                                            .black,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey('Inter'),
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          40.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '${valueOrDefault<String>(
                                                                      listViewMentorRecord
                                                                          .followersCount
                                                                          .toString(),
                                                                      '0',
                                                                    )} followers',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter',
                                                                          color:
                                                                              const Color(0xFF959595),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey('Inter'),
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          75.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'Sendrequest pressed ...');
                                                                    },
                                                                    text: '',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width:
                                                                          140.0,
                                                                      height:
                                                                          40.0,
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: Colors
                                                                          .transparent,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleSmallFamily,
                                                                            color:
                                                                                Colors.white,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                          ),
                                                                      elevation:
                                                                          0.0,
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            0.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        55.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await RequestsRecord
                                                                    .collection
                                                                    .doc()
                                                                    .set(
                                                                        createRequestsRecordData(
                                                                      mentorRef:
                                                                          listViewMentorRecord
                                                                              .reference,
                                                                      createdTime:
                                                                          getCurrentTimestamp,
                                                                      menteeRef:
                                                                          menteeSearchMenteeRecord
                                                                              ?.reference,
                                                                      requestState:
                                                                          RequestState
                                                                              .PENDING,
                                                                    ));
                                                              },
                                                              child: Text(
                                                                'Send request',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      color: const Color(
                                                                          0xFFFF0000),
                                                                      fontSize:
                                                                          17.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Inter'),
                                                                      lineHeight:
                                                                          3.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        95.0,
                                                                        75.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              buttonSize: 46.0,
                                                              icon: const Icon(
                                                                Icons
                                                                    .arrow_forward_ios_outlined,
                                                                color: Color(
                                                                    0xbacdff0e00),
                                                                size: 15.0,
                                                              ),
                                                              onPressed: () {
                                                                print(
                                                                    'IconButton pressed ...');
                                                              },
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        240.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  35.0,
                                                              buttonSize: 60.0,
                                                              icon: Icon(
                                                                Icons
                                                                    .person_add_alt_1,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 35.0,
                                                              ),
                                                              onPressed: () {
                                                                print(
                                                                    'IconButton pressed ...');
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(10.0,
                                                                20.0, 0.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        valueOrDefault<String>(
                                                          listViewMentorRecord
                                                              .photoUrl,
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/ask-a-cegian-6q7f9f/assets/xivcb029tycp/Group_(1).png',
                                                        ),
                                                        width: 53.0,
                                                        height: 53.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Column(
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
                                      hoverColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      icon: const Icon(
                                        Icons.cottage_outlined,
                                        color: Colors.black,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        context.goNamed(
                                          'MenteeHome',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
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
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: Colors.black,
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
                                      hoverColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      hoverIconColor: const Color(0xFFFF0000),
                                      icon: const Icon(
                                        Icons.notification_add_sharp,
                                        color: Colors.black,
                                        size: 24.0,
                                      ),
                                      onPressed: () {
                                        print('NotifyIconButton pressed ...');
                                      },
                                    ),
                                    Text(
                                      'Notifications',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: Colors.black,
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
                                      hoverColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      hoverIconColor: const Color(0xFFFF0000),
                                      icon: const Icon(
                                        Icons.groups_sharp,
                                        color: Color(0xFFFF0000),
                                        size: 28.0,
                                      ),
                                      onPressed: () async {
                                        context.goNamed(
                                          'MenteeSearch',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                    Text(
                                      'Mentors',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
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
                                      hoverColor: FlutterFlowTheme.of(context)
                                          .secondary,
                                      hoverIconColor: const Color(0xFFFF0000),
                                      icon: const Icon(
                                        Icons.settings_sharp,
                                        color: Colors.black,
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
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: Colors.black,
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
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
