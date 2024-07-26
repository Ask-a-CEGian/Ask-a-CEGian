import '/admin/admin_settings/admin_settings_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_reports_widget.dart' show AdminReportsWidget;
import 'package:flutter/material.dart';

class AdminReportsModel extends FlutterFlowModel<AdminReportsWidget> {
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
