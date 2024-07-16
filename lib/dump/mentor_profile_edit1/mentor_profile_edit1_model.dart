import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'mentor_profile_edit1_widget.dart' show MentorProfileEdit1Widget;
import 'package:flutter/material.dart';

class MentorProfileEdit1Model
    extends FlutterFlowModel<MentorProfileEdit1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Branch widget.
  FocusNode? branchFocusNode;
  TextEditingController? branchTextController;
  String? Function(BuildContext, String?)? branchTextControllerValidator;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for PersonalStatement widget.
  FocusNode? personalStatementFocusNode;
  TextEditingController? personalStatementTextController;
  String? Function(BuildContext, String?)?
      personalStatementTextControllerValidator;
  // State field(s) for GraduationYear widget.
  FocusNode? graduationYearFocusNode;
  TextEditingController? graduationYearTextController;
  String? Function(BuildContext, String?)?
      graduationYearTextControllerValidator;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue;
  FormFieldController<List<String>>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    branchFocusNode?.dispose();
    branchTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    personalStatementFocusNode?.dispose();
    personalStatementTextController?.dispose();

    graduationYearFocusNode?.dispose();
    graduationYearTextController?.dispose();
  }
}
