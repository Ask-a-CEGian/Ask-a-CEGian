import '/flutter_flow/flutter_flow_util.dart';
import '/mentee/mentee_settings/mentee_settings_widget.dart';
import 'mentee_search_old_widget.dart' show MenteeSearchOldWidget;
import 'package:flutter/material.dart';

class MenteeSearchOldModel extends FlutterFlowModel<MenteeSearchOldWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for MenteeSettings component.
  late MenteeSettingsModel menteeSettingsModel;

  @override
  void initState(BuildContext context) {
    menteeSettingsModel = createModel(context, () => MenteeSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    menteeSettingsModel.dispose();
  }
}
