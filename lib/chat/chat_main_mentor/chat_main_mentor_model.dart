import '/flutter_flow/flutter_flow_util.dart';
import 'chat_main_mentor_widget.dart' show ChatMainMentorWidget;
import 'package:flutter/material.dart';

class ChatMainMentorModel extends FlutterFlowModel<ChatMainMentorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
