import '/flutter_flow/flutter_flow_util.dart';
import 'meeting_details_widget.dart' show MeetingDetailsWidget;
import 'package:flutter/material.dart';

class MeetingDetailsModel extends FlutterFlowModel<MeetingDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - eventToJson] action in Button widget.
  dynamic createdEvent2;
  // Stores action output result for [Custom Action - signInWithGoogle] action in Button widget.
  String? accessToken2;
  // Stores action output result for [Custom Action - addEventToCalendar] action in Button widget.
  int? eventAdded2;
  // Stores action output result for [Custom Action - eventToJson] action in IconButton widget.
  dynamic createdEvent;
  // Stores action output result for [Custom Action - signInWithGoogle] action in IconButton widget.
  String? accessToken;
  // Stores action output result for [Custom Action - addEventToCalendar] action in IconButton widget.
  int? eventAdded;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
