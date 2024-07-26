import '/flutter_flow/flutter_flow_util.dart';
import '/mentor/mentor_settings/mentor_settings_widget.dart';
import 'connected_mentees_widget.dart' show ConnectedMenteesWidget;
import 'package:flutter/material.dart';

class ConnectedMenteesModel extends FlutterFlowModel<ConnectedMenteesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MentorSettings component.
  late MentorSettingsModel mentorSettingsModel;

  @override
  void initState(BuildContext context) {
    mentorSettingsModel = createModel(context, () => MentorSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mentorSettingsModel.dispose();
  }
}
