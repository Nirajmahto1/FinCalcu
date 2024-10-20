import '/flutter_flow/flutter_flow_util.dart';
import 'loginn_widget.dart' show LoginnWidget;
import 'package:flutter/material.dart';

class LoginnModel extends FlutterFlowModel<LoginnWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for passwordd widget.
  FocusNode? passworddFocusNode;
  TextEditingController? passworddTextController;
  late bool passworddVisibility;
  String? Function(BuildContext, String?)? passworddTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passworddVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passworddFocusNode?.dispose();
    passworddTextController?.dispose();
  }
}
