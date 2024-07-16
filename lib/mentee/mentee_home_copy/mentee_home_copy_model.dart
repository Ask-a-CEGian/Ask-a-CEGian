import '/components/mentee_settings/mentee_settings_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mentee_home_copy_widget.dart' show MenteeHomeCopyWidget;
import 'package:flutter/material.dart';

class MenteeHomeCopyModel extends FlutterFlowModel<MenteeHomeCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenteeSettings component.
  late MenteeSettingsModel menteeSettingsModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    menteeSettingsModel = createModel(context, () => MenteeSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menteeSettingsModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
