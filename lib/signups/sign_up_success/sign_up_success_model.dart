import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_success_widget.dart' show SignUpSuccessWidget;
import 'package:flutter/material.dart';

class SignUpSuccessModel extends FlutterFlowModel<SignUpSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
