import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mentee_settings_model.dart';
export 'mentee_settings_model.dart';

class MenteeSettingsWidget extends StatefulWidget {
  const MenteeSettingsWidget({super.key});

  @override
  State<MenteeSettingsWidget> createState() => _MenteeSettingsWidgetState();
}

class _MenteeSettingsWidgetState extends State<MenteeSettingsWidget> {
  late MenteeSettingsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenteeSettingsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362.0,
      height: 1046.0,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(21.0, 63.0, 0.0, 0.0),
            child: Text(
              'Settings',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Inter',
                    color: Colors.black,
                    fontSize: 20.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: GoogleFonts.asMap().containsKey('Inter'),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(124.0, 117.61, 0.0, 0.0),
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Group_(2).png',
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(95.0, 292.0, 0.0, 0.0),
            child: Container(
              width: 174.0,
              height: 47.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('MenteeProfile');
                },
                text: 'Visit Profile',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFFFF0000),
                  textStyle: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelSmallFamily,
                        color: Colors.white,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).labelSmallFamily),
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(21.0, 395.0, 0.0, 0.0),
            child: Text(
              'Messages',
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                    color: Colors.black,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelLargeFamily),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(21.0, 470.0, 0.0, 0.0),
            child: Text(
              'Notifications',
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                    color: Colors.black,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelLargeFamily),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(21.0, 545.0, 0.0, 0.0),
            child: Text(
              'Privacy Policy',
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                    color: Colors.black,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelLargeFamily),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(21.0, 620.0, 0.0, 0.0),
            child: Text(
              'Terms and Conditions',
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                    color: Colors.black,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelLargeFamily),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(21.0, 695.0, 0.0, 0.0),
            child: Text(
              'Logout',
              style: FlutterFlowTheme.of(context).labelLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                    color: Colors.black,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).labelLargeFamily),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(290.0, 397.0, 0.0, 0.0),
            child: Container(
              width: 31.0,
              height: 19.0,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(8.0),
                shape: BoxShape.rectangle,
              ),
              child: Text(
                '8',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: Colors.black,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(290.0, 471.0, 0.0, 0.0),
            child: Container(
              width: 31.0,
              height: 19.0,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(8.0),
                shape: BoxShape.rectangle,
              ),
              child: Text(
                '8',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: Colors.black,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(316.0, 50.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              buttonSize: 46.0,
              icon: const Icon(
                Icons.close,
                color: Color(0xFFFF0000),
                size: 24.0,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 680.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                GoRouter.of(context).prepareAuthEvent();
                await authManager.signOut();
                GoRouter.of(context).clearRedirectLocation();

                context.goNamedAuth('LandingPage', context.mounted);
              },
              text: '',
              options: FFButtonOptions(
                width: 120.0,
                height: 50.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Colors.transparent,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: Colors.white,
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
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(318.0, 385.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 0.0,
              borderWidth: 0.0,
              buttonSize: 40.0,
              hoverIconColor: const Color(0xFFFF0000),
              icon: const Icon(
                Icons.chevron_right,
                color: Color(0xFFFF0000),
                size: 24.0,
              ),
              onPressed: () {
                print('MessageRightIcon pressed ...');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(318.0, 460.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 0.0,
              borderWidth: 0.0,
              buttonSize: 40.0,
              hoverIconColor: const Color(0xFFFF0000),
              icon: const Icon(
                Icons.chevron_right,
                color: Color(0xFFFF0000),
                size: 24.0,
              ),
              onPressed: () {
                print('NotificationRightIcon pressed ...');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(318.0, 535.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 0.0,
              borderWidth: 0.0,
              buttonSize: 40.0,
              hoverIconColor: const Color(0xFFFF0000),
              icon: const Icon(
                Icons.chevron_right,
                color: Color(0xFFFF0000),
                size: 24.0,
              ),
              onPressed: () {
                print('PPrightIcon pressed ...');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(318.0, 610.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 0.0,
              borderWidth: 0.0,
              buttonSize: 40.0,
              hoverIconColor: const Color(0xFFFF0000),
              icon: const Icon(
                Icons.chevron_right,
                color: Color(0xFFFF0000),
                size: 24.0,
              ),
              onPressed: () {
                print('TCrightIcon pressed ...');
              },
            ),
          ),
        ],
      ),
    );
  }
}
