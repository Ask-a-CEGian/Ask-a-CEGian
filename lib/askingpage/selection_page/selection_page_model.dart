import '/askingpage/selecting_mentor_mentee/selecting_mentor_mentee_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'selection_page_widget.dart' show SelectionPageWidget;
import 'package:flutter/material.dart';

class SelectionPageModel extends FlutterFlowModel<SelectionPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SelectingMentorMentee component.
  late SelectingMentorMenteeModel selectingMentorMenteeModel;

  @override
  void initState(BuildContext context) {
    selectingMentorMenteeModel =
        createModel(context, () => SelectingMentorMenteeModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    selectingMentorMenteeModel.dispose();
  }
}
