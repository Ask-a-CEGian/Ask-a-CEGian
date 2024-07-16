import '/flutter_flow/flutter_flow_util.dart';
import 'login_verification_widget.dart' show LoginVerificationWidget;
import 'package:flutter/material.dart';

class LoginVerificationModel extends FlutterFlowModel<LoginVerificationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
