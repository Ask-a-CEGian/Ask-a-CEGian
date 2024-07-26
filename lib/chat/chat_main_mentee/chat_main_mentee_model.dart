import '/flutter_flow/flutter_flow_util.dart';
import '/mentee/mentee_settings/mentee_settings_widget.dart';
import 'chat_main_mentee_widget.dart' show ChatMainMenteeWidget;
import 'package:flutter/material.dart';

class ChatMainMenteeModel extends FlutterFlowModel<ChatMainMenteeWidget> {
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
