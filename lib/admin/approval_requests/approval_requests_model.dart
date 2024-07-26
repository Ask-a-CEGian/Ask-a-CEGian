import '/admin/admin_settings/admin_settings_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'approval_requests_widget.dart' show ApprovalRequestsWidget;
import 'package:flutter/material.dart';

class ApprovalRequestsModel extends FlutterFlowModel<ApprovalRequestsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AdminSettings component.
  late AdminSettingsModel adminSettingsModel;

  @override
  void initState(BuildContext context) {
    adminSettingsModel = createModel(context, () => AdminSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    adminSettingsModel.dispose();
  }
}
