import '/flutter_flow/flutter_flow_util.dart';
import 'asking_page_widget.dart' show AskingPageWidget;
import 'package:flutter/material.dart';

class AskingPageModel extends FlutterFlowModel<AskingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
