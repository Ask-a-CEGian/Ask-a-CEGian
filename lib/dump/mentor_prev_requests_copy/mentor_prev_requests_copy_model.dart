import '/flutter_flow/flutter_flow_util.dart';
import 'mentor_prev_requests_copy_widget.dart'
    show MentorPrevRequestsCopyWidget;
import 'package:flutter/material.dart';

class MentorPrevRequestsCopyModel
    extends FlutterFlowModel<MentorPrevRequestsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
