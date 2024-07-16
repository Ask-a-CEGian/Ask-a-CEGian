import '/flutter_flow/flutter_flow_util.dart';
import 'splash1_widget.dart' show Splash1Widget;
import 'package:flutter/material.dart';

class Splash1Model extends FlutterFlowModel<Splash1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
