import '/components/signupmode_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'signup_widget.dart' show SignupWidget;
import 'package:flutter/material.dart';

class SignupModel extends FlutterFlowModel<SignupWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for signupmode component.
  late SignupmodeModel signupmodeModel;

  @override
  void initState(BuildContext context) {
    signupmodeModel = createModel(context, () => SignupmodeModel());
  }

  @override
  void dispose() {
    signupmodeModel.dispose();
  }
}
