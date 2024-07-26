import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/mentee/mentee_settings/mentee_settings_widget.dart';
import 'mentee_search_widget.dart' show MenteeSearchWidget;
import 'package:flutter/material.dart';

class MenteeSearchModel extends FlutterFlowModel<MenteeSearchWidget> {
  ///  Local state fields for this page.

  bool searchActive = false;

  List<String> requestedUsers = [];
  void addToRequestedUsers(String item) => requestedUsers.add(item);
  void removeFromRequestedUsers(String item) => requestedUsers.remove(item);
  void removeAtIndexFromRequestedUsers(int index) =>
      requestedUsers.removeAt(index);
  void insertAtIndexInRequestedUsers(int index, String item) =>
      requestedUsers.insert(index, item);
  void updateRequestedUsersAtIndex(int index, Function(String) updateFn) =>
      requestedUsers[index] = updateFn(requestedUsers[index]);

  List<String> currentMentors = [];
  void addToCurrentMentors(String item) => currentMentors.add(item);
  void removeFromCurrentMentors(String item) => currentMentors.remove(item);
  void removeAtIndexFromCurrentMentors(int index) =>
      currentMentors.removeAt(index);
  void insertAtIndexInCurrentMentors(int index, String item) =>
      currentMentors.insert(index, item);
  void updateCurrentMentorsAtIndex(int index, Function(String) updateFn) =>
      currentMentors[index] = updateFn(currentMentors[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UsersRecord> simpleSearchResults = [];
  // Model for MenteeSettings component.
  late MenteeSettingsModel menteeSettingsModel;

  @override
  void initState(BuildContext context) {
    menteeSettingsModel = createModel(context, () => MenteeSettingsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();

    menteeSettingsModel.dispose();
  }
}
