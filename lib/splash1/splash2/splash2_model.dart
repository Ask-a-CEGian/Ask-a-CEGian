import '/flutter_flow/flutter_flow_util.dart';
import 'splash2_widget.dart' show Splash2Widget;
import 'package:flutter/material.dart';

class Splash2Model extends FlutterFlowModel<Splash2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
