import '/components/userlist_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_list_widget.dart' show UserListWidget;
import 'package:flutter/material.dart';

class UserListModel extends FlutterFlowModel<UserListWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for userlist component.
  late UserlistModel userlistModel;

  @override
  void initState(BuildContext context) {
    userlistModel = createModel(context, () => UserlistModel());
  }

  @override
  void dispose() {
    userlistModel.dispose();
  }
}
