import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'mentor_profile_edit_widget.dart' show MentorProfileEditWidget;
import 'package:flutter/material.dart';

class MentorProfileEditModel extends FlutterFlowModel<MentorProfileEditWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Branch widget.
  FocusNode? branchFocusNode1;
  TextEditingController? branchTextController1;
  String? Function(BuildContext, String?)? branchTextController1Validator;
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
  // State field(s) for Branch widget.
  FocusNode? branchFocusNode2;
  TextEditingController? branchTextController2;
  String? Function(BuildContext, String?)? branchTextController2Validator;
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    branchFocusNode1?.dispose();
    branchTextController1?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    personalStatementFocusNode?.dispose();
    personalStatementTextController?.dispose();

    graduationYearFocusNode?.dispose();
    graduationYearTextController?.dispose();

    branchFocusNode2?.dispose();
    branchTextController2?.dispose();
  }
}