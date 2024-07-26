import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for signupEmail widget.
  FocusNode? signupEmailFocusNode;
  TextEditingController? signupEmailTextController;
  String? Function(BuildContext, String?)? signupEmailTextControllerValidator;
  // State field(s) for signupPassword widget.
  FocusNode? signupPasswordFocusNode;
  TextEditingController? signupPasswordTextController;
  late bool signupPasswordVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordTextControllerValidator;
  // State field(s) for signupPasswordConfirm widget.
  FocusNode? signupPasswordConfirmFocusNode;
  TextEditingController? signupPasswordConfirmTextController;
  late bool signupPasswordConfirmVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signupPasswordVisibility = false;
    signupPasswordConfirmVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    signupEmailFocusNode?.dispose();
    signupEmailTextController?.dispose();

    signupPasswordFocusNode?.dispose();
    signupPasswordTextController?.dispose();

    signupPasswordConfirmFocusNode?.dispose();
    signupPasswordConfirmTextController?.dispose();
  }
}
