import '/chat/date_time_form/date_time_form_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'meeting_creation_widget.dart' show MeetingCreationWidget;
import 'package:flutter/material.dart';

class MeetingCreationModel extends FlutterFlowModel<MeetingCreationWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for agenda widget.
  FocusNode? agendaFocusNode;
  TextEditingController? agendaTextController;
  String? Function(BuildContext, String?)? agendaTextControllerValidator;
  // State field(s) for details widget.
  FocusNode? detailsFocusNode;
  TextEditingController? detailsTextController;
  String? Function(BuildContext, String?)? detailsTextControllerValidator;
  // Model for startTime.
  late DateTimeFormModel startTimeModel;
  // Model for endTime.
  late DateTimeFormModel endTimeModel;

  @override
  void initState(BuildContext context) {
    startTimeModel = createModel(context, () => DateTimeFormModel());
    endTimeModel = createModel(context, () => DateTimeFormModel());
  }

  @override
  void dispose() {
    agendaFocusNode?.dispose();
    agendaTextController?.dispose();

    detailsFocusNode?.dispose();
    detailsTextController?.dispose();

    startTimeModel.dispose();
    endTimeModel.dispose();
  }
}
