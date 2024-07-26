import '/flutter_flow/flutter_flow_util.dart';
import 'report_sheet_widget.dart' show ReportSheetWidget;
import 'package:flutter/material.dart';

class ReportSheetModel extends FlutterFlowModel<ReportSheetWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
