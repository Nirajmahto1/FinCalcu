import '/components/list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'fulllis_widget.dart' show FulllisWidget;
import 'package:flutter/material.dart';

class FulllisModel extends FlutterFlowModel<FulllisWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for list component.
  late ListModel listModel;

  @override
  void initState(BuildContext context) {
    listModel = createModel(context, () => ListModel());
  }

  @override
  void dispose() {
    listModel.dispose();
  }
}
