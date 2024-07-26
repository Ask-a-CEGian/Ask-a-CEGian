import '/admin/admin_settings/admin_settings_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_user_management_widget.dart' show AdminUserManagementWidget;
import 'package:flutter/material.dart';

class AdminUserManagementModel
    extends FlutterFlowModel<AdminUserManagementWidget> {
  ///  Local state fields for this page.

  bool showFullList = true;

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
