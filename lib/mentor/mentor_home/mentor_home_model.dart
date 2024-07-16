import '/components/mentor_settings/mentor_settings_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mentor_home_widget.dart' show MentorHomeWidget;
import 'package:flutter/material.dart';

class MentorHomeModel extends FlutterFlowModel<MentorHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MentorSettings component.
  late MentorSettingsModel mentorSettingsModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    mentorSettingsModel = createModel(context, () => MentorSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mentorSettingsModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
