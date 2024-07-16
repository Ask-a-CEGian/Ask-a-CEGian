import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/mentor_settings/mentor_settings_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math' as math;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mentor_home_model.dart';
export 'mentor_home_model.dart';

class MentorHomeWidget extends StatefulWidget {
  const MentorHomeWidget({super.key});

  @override
  State<MentorHomeWidget> createState() => _MentorHomeWidgetState();
}

class _MentorHomeWidgetState extends State<MentorHomeWidget> {
  late MentorHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MentorHomeModel());

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
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        drawer: SizedBox(
          width: 370.0,
          child: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.mentorSettingsModel,
              updateCallback: () => setState(() {}),
              child: const MentorSettingsWidget(),
            ),
          ),
        ),
        body: Stack(
          children: [
            StreamBuilder<List<MentorRecord>>(
              stream: queryMentorRecord(
                queryBuilder: (mentorRecord) => mentorRecord.where(
                  'mentor_user_ref',
                  isEqualTo: currentUserReference,
                ),
                singleRecord: true,
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
                List<MentorRecord> columnMentorRecordList = snapshot.data!;

                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final columnMentorRecord = columnMentorRecordList.isNotEmpty
                    ? columnMentorRecordList.first
                    : null;
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              21.0, 330.0, 0.0, 0.0),
                          child: Text(
                            'Statistics',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Inter'),
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              21.0, 371.0, 0.0, 0.0),
                          child: Container(
                            width: 370.0,
                            height: 89.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFECDDD8),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              21.0, 492.0, 0.0, 0.0),
                          child: Container(
                            width: 370.0,
                            height: 89.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFECDDD8),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              36.0, 394.0, 0.0, 0.0),
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Icon(
                              Icons.groups_2,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                36.0, 426.0, 0.0, 0.0),
                            child: Text(
                              'Total mentorships',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              36.0, 512.0, 0.0, 0.0),
                          child: Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: const Icon(
                              Icons.calendar_month,
                              color: Colors.black,
                              size: 24.0,
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                36.0, 542.0, 0.0, 0.0),
                            child: Text(
                              'Upcoming meetings',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyLargeFamily,
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyLargeFamily),
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              299.97, 328.0, 0.0, 0.0),
                          child: Transform.rotate(
                            angle: 45.0 * (math.pi / 180),
                            origin: const Offset(-45.0, 0),
                            child: Container(
                              width: 137.32,
                              height: 27.46,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              278.5, 378.08, 0.0, 0.0),
                          child: Transform.rotate(
                            angle: 45.0 * (math.pi / 180),
                            origin: const Offset(-45.0, 0),
                            child: Container(
                              width: 137.32,
                              height: 27.46,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              232.24, 554.37, 0.0, 0.0),
                          child: Transform.rotate(
                            angle: 45.0 * (math.pi / 180),
                            origin: const Offset(-45.0, 0),
                            child: Container(
                              width: 137.32,
                              height: 27.46,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              244.5, 495.08, 0.0, 0.0),
                          child: Transform.rotate(
                            angle: 45.0 * (math.pi / 180),
                            origin: const Offset(-45.0, 0),
                            child: Container(
                              width: 137.32,
                              height: 27.46,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              265.97, 445.0, 0.0, 0.0),
                          child: Transform.rotate(
                            angle: 45.0 * (math.pi / 180),
                            origin: const Offset(-45.0, 0),
                            child: Container(
                              width: 137.32,
                              height: 2.0,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              266.24, 437.37, 0.0, 0.0),
                          child: Transform.rotate(
                            angle: 45.0 * (math.pi / 180),
                            origin: const Offset(-45.0, 0),
                            child: Container(
                              width: 137.32,
                              height: 27.46,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.13),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                336.0, 400.0, 0.0, 0.0),
                            child: FutureBuilder<int>(
                              future: queryMentorshipsRecordCount(
                                queryBuilder: (mentorshipsRecord) =>
                                    mentorshipsRecord.where(
                                  'mentor_ref',
                                  isEqualTo: columnMentorRecord?.reference,
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
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                int textCount = snapshot.data!;

                                return Text(
                                  valueOrDefault<String>(
                                    textCount.toString(),
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Colors.black,
                                        fontSize: 36.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey('Inter'),
                                      ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              336.0, 520.0, 0.0, 0.0),
                          child: Text(
                            '1',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: Colors.black,
                                  fontSize: 36.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts:
                                      GoogleFonts.asMap().containsKey('Inter'),
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 140.0, 0.0, 0.0),
                            child: Container(
                              width: 342.0,
                              height: 132.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFFE6E6E6),
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Welcome aboard ${columnMentorRecord?.mentorName}',
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
                                        15.0, 55.0, 0.0, 0.0),
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n  ',
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
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 59.0, 0.0, 0.0),
                            child: Container(
                              width: 343.0,
                              height: 36.0,
                              constraints: const BoxConstraints(
                                maxWidth: 500.0,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFE6E6E6),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Stack(
                                children: [
                                  Stack(
                                    children: [
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 20.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        icon: const Icon(
                                          Icons.search_rounded,
                                          color: Color(0xFF57636C),
                                          size: 24.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          40.0, 0.0, 0.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController,
                                        focusNode: _model.textFieldFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.textController',
                                          const Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: false,
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily),
                                              ),
                                          alignLabelWithHint: false,
                                          hintText: '     Search',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelSmall
                                              .override(
                                                fontFamily: 'Inter',
                                                color: const Color(0x9C3C4399),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts:
                                                    GoogleFonts.asMap()
                                                        .containsKey('Inter'),
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 0.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 0.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 0.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 0.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          filled: true,
                                          fillColor: const Color(0xFFE6E6E6),
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily: 'Inter',
                                              color: Colors.black,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts:
                                                  GoogleFonts.asMap()
                                                      .containsKey('Inter'),
                                            ),
                                        validator: _model
                                            .textControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        300.0, 0.0, 0.0, 0.0),
                                    child: FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 20.0,
                                      borderWidth: 0.0,
                                      buttonSize: 40.0,
                                      icon: Icon(
                                        Icons.keyboard_voice_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
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
                                  hoverColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  icon: const Icon(
                                    Icons.cottage_outlined,
                                    color: Color(0xFFFF0000),
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed(
                                      'MentorHome',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
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
                                    Icons.notification_add_sharp,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('MentorRequests');
                                  },
                                ),
                                Text(
                                  'Notifications',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
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
                                  hoverColor:
                                      FlutterFlowTheme.of(context).secondary,
                                  hoverIconColor: const Color(0xFFFF0000),
                                  icon: const Icon(
                                    Icons.person_sharp,
                                    color: Colors.black,
                                    size: 28.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed(
                                      'MentorProfile',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                ),
                                Text(
                                  'Profile',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
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
                                  hoverColor:
                                      FlutterFlowTheme.of(context).secondary,
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
                                        fontFamily: FlutterFlowTheme.of(context)
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
  }
}
