import '/components/selecting_mentor_mentee/selecting_mentor_mentee_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'selection_widget.dart' show SelectionWidget;
import 'package:flutter/material.dart';

class SelectionModel extends FlutterFlowModel<SelectionWidget> {
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
