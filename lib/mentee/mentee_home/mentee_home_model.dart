import '/components/mentee_settings/mentee_settings_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mentee_home_widget.dart' show MenteeHomeWidget;
import 'package:flutter/material.dart';

class MenteeHomeModel extends FlutterFlowModel<MenteeHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenteeSettings component.
  late MenteeSettingsModel menteeSettingsModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {
    menteeSettingsModel = createModel(context, () => MenteeSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menteeSettingsModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
