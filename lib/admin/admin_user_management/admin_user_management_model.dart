import '/flutter_flow/flutter_flow_util.dart';
import 'admin_user_management_widget.dart' show AdminUserManagementWidget;
import 'package:flutter/material.dart';

class AdminUserManagementModel
    extends FlutterFlowModel<AdminUserManagementWidget> {
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
