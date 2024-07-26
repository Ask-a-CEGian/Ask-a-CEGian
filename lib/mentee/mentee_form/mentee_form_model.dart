import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'mentee_form_widget.dart' show MenteeFormWidget;
import 'package:flutter/material.dart';

class MenteeFormModel extends FlutterFlowModel<MenteeFormWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 30) {
      return 'Exceeded maximum characters';
    }

    return null;
  }

  // State field(s) for branch widget.
  FocusNode? branchFocusNode;
  TextEditingController? branchTextController;
  String? Function(BuildContext, String?)? branchTextControllerValidator;
  String? _branchTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Graduationyear widget.
  FocusNode? graduationyearFocusNode;
  TextEditingController? graduationyearTextController;
  String? Function(BuildContext, String?)?
      graduationyearTextControllerValidator;
  // State field(s) for Linkedin widget.
  FocusNode? linkedinFocusNode;
  TextEditingController? linkedinTextController;
  String? Function(BuildContext, String?)? linkedinTextControllerValidator;
  String? _linkedinTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for interestOptions widget.
  FormFieldController<List<String>>? interestOptionsValueController;
  List<String>? get interestOptionsValues =>
      interestOptionsValueController?.value;
  set interestOptionsValues(List<String>? v) =>
      interestOptionsValueController?.value = v;

  // State field(s) for statement widget.
  FocusNode? statementFocusNode;
  TextEditingController? statementTextController;
  String? Function(BuildContext, String?)? statementTextControllerValidator;
  String? _statementTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    branchTextControllerValidator = _branchTextControllerValidator;
    linkedinTextControllerValidator = _linkedinTextControllerValidator;
    statementTextControllerValidator = _statementTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    branchFocusNode?.dispose();
    branchTextController?.dispose();

    graduationyearFocusNode?.dispose();
    graduationyearTextController?.dispose();

    linkedinFocusNode?.dispose();
    linkedinTextController?.dispose();

    statementFocusNode?.dispose();
    statementTextController?.dispose();
  }
}
