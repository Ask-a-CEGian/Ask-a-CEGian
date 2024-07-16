import '/flutter_flow/flutter_flow_util.dart';
import 'mentee_home_copy1_widget.dart' show MenteeHomeCopy1Widget;
import 'package:flutter/material.dart';

class MenteeHomeCopy1Model extends FlutterFlowModel<MenteeHomeCopy1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Position widget.
  FocusNode? positionFocusNode;
  TextEditingController? positionTextController;
  String? Function(BuildContext, String?)? positionTextControllerValidator;
  // State field(s) for Followers widget.
  FocusNode? followersFocusNode;
  TextEditingController? followersTextController;
  String? Function(BuildContext, String?)? followersTextControllerValidator;
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    positionFocusNode?.dispose();
    positionTextController?.dispose();

    followersFocusNode?.dispose();
    followersTextController?.dispose();

    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();

    textFieldFocusNode3?.dispose();
    textController6?.dispose();

    textFieldFocusNode4?.dispose();
    textController7?.dispose();
  }
}
