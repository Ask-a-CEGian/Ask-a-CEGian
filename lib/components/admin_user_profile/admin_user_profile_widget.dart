import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'admin_user_profile_model.dart';
export 'admin_user_profile_model.dart';

class AdminUserProfileWidget extends StatefulWidget {
  const AdminUserProfileWidget({super.key});

  @override
  State<AdminUserProfileWidget> createState() => _AdminUserProfileWidgetState();
}

class _AdminUserProfileWidgetState extends State<AdminUserProfileWidget> {
  late AdminUserProfileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminUserProfileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 30.0,
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 16.4,
              color: Color(0x00000040),
              spreadRadius: 5.0,
            )
          ],
        ),
        child: Stack(
          children: [
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'View profile',
              options: FFButtonOptions(
                width: 200.0,
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Colors.transparent,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter',
                      color: Colors.black,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey('Inter'),
                    ),
                elevation: 0.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 0.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Suspend account',
                options: FFButtonOptions(
                  width: 200.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Inter'),
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
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Reports',
                options: FFButtonOptions(
                  width: 200.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Inter'),
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
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Delete account',
                options: FFButtonOptions(
                  width: 200.0,
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.transparent,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Inter',
                        color: Colors.black,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Inter'),
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
    );
  }
}
