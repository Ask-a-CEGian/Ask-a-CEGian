import '/flutter_flow/flutter_flow_util.dart';
import '/mentee/mentee_settings/mentee_settings_widget.dart';
import 'mentee_home_widget.dart' show MenteeHomeWidget;
import 'package:flutter/material.dart';

class MenteeHomeModel extends FlutterFlowModel<MenteeHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenteeSettings component.
  late MenteeSettingsModel menteeSettingsModel;

  @override
  void initState(BuildContext context) {
    menteeSettingsModel = createModel(context, () => MenteeSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menteeSettingsModel.dispose();
  }
}
