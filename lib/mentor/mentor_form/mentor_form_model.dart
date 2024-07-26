import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'mentor_form_widget.dart' show MentorFormWidget;
import 'package:flutter/material.dart';

class MentorFormModel extends FlutterFlowModel<MentorFormWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the full name.';
    }

    return null;
  }

  // State field(s) for year_grad widget.
  FocusNode? yearGradFocusNode;
  TextEditingController? yearGradTextController;
  String? Function(BuildContext, String?)? yearGradTextControllerValidator;
  String? _yearGradTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the year of graduation';
    }

    return null;
  }

  // State field(s) for branch widget.
  FocusNode? branchFocusNode;
  TextEditingController? branchTextController;
  String? Function(BuildContext, String?)? branchTextControllerValidator;
  String? _branchTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter your branch';
    }

    return null;
  }

  // State field(s) for LinkedIn widget.
  FocusNode? linkedInFocusNode;
  TextEditingController? linkedInTextController;
  String? Function(BuildContext, String?)? linkedInTextControllerValidator;
  String? _linkedInTextControllerValidator(BuildContext context, String? val) {
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

  // State field(s) for availabilityOptions widget.
  FormFieldController<List<String>>? availabilityOptionsValueController;
  String? get availabilityOptionsValue =>
      availabilityOptionsValueController?.value?.firstOrNull;
  set availabilityOptionsValue(String? val) =>
      availabilityOptionsValueController?.value = val != null ? [val] : [];
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
    yearGradTextControllerValidator = _yearGradTextControllerValidator;
    branchTextControllerValidator = _branchTextControllerValidator;
    linkedInTextControllerValidator = _linkedInTextControllerValidator;
    statementTextControllerValidator = _statementTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    yearGradFocusNode?.dispose();
    yearGradTextController?.dispose();

    branchFocusNode?.dispose();
    branchTextController?.dispose();

    linkedInFocusNode?.dispose();
    linkedInTextController?.dispose();

    statementFocusNode?.dispose();
    statementTextController?.dispose();
  }
}
