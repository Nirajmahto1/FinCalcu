import '/flutter_flow/flutter_flow_util.dart';
import 'extradscomp_widget.dart' show ExtradscompWidget;
import 'package:flutter/material.dart';

class ExtradscompModel extends FlutterFlowModel<ExtradscompWidget> {
  ///  Local state fields for this component.

  double exds = 0.0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
