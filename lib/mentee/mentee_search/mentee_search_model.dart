import '/components/mentee_settings/mentee_settings_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mentee_search_widget.dart' show MenteeSearchWidget;
import 'package:flutter/material.dart';

class MenteeSearchModel extends FlutterFlowModel<MenteeSearchWidget> {
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
