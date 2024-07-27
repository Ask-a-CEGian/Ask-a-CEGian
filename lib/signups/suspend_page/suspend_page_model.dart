import '/flutter_flow/flutter_flow_util.dart';
import 'suspend_page_widget.dart' show SuspendPageWidget;
import 'package:flutter/material.dart';

class SuspendPageModel extends FlutterFlowModel<SuspendPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
