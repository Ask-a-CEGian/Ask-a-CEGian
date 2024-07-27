import '/flutter_flow/flutter_flow_util.dart';
import 'unverified_page_widget.dart' show UnverifiedPageWidget;
import 'package:flutter/material.dart';

class UnverifiedPageModel extends FlutterFlowModel<UnverifiedPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}