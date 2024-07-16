import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'nav_bar_home_model.dart';
export 'nav_bar_home_model.dart';

class NavBarHomeWidget extends StatefulWidget {
  const NavBarHomeWidget({
    super.key,
    int? selectedPageIndex,
    bool? hidden,
  })  : selectedPageIndex = selectedPageIndex ?? 1,
        hidden = hidden ?? false;

  final int selectedPageIndex;
  final bool hidden;

  @override
  State<NavBarHomeWidget> createState() => _NavBarHomeWidgetState();
}

class _NavBarHomeWidgetState extends State<NavBarHomeWidget> {
  late NavBarHomeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarHomeModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
      child: Container(
        width: 360.0,
        height: 70.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 0.0,
                  buttonSize: 50.0,
                  hoverColor: FlutterFlowTheme.of(context).secondary,
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
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                ),
                Text(
                  'Home',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: Colors.black,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
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
                  hoverColor: FlutterFlowTheme.of(context).secondary,
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
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: Colors.black,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
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
                  hoverColor: FlutterFlowTheme.of(context).secondary,
                  icon: const Icon(
                    Icons.groups_sharp,
                    color: Colors.black,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.goNamed(
                      'MenteeSearch',
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
                  'Mentors',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: Colors.black,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
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
                  hoverColor: FlutterFlowTheme.of(context).secondary,
                  icon: const Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('ProfileIconButton pressed ...');
                  },
                ),
                Text(
                  'Profile',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: Colors.black,
                        letterSpacing: 0.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
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
    );
  }
}
