import '/components/receptionist_show_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recep_show_widget.dart' show RecepShowWidget;
import 'package:flutter/material.dart';

class RecepShowModel extends FlutterFlowModel<RecepShowWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for receptionist_show component.
  late ReceptionistShowModel receptionistShowModel;

  @override
  void initState(BuildContext context) {
    receptionistShowModel = createModel(context, () => ReceptionistShowModel());
  }

  @override
  void dispose() {
    receptionistShowModel.dispose();
  }
}
