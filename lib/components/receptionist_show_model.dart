import '/components/adminpanell_widget.dart';
import '/components/extradscomp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'receptionist_show_widget.dart' show ReceptionistShowWidget;
import 'package:flutter/material.dart';

class ReceptionistShowModel extends FlutterFlowModel<ReceptionistShowWidget> {
  ///  Local state fields for this component.

  double exdis = 0.0;

  ///  State fields for stateful widgets in this component.

  // Model for adminpanell component.
  late AdminpanellModel adminpanellModel;
  // Models for extradscomp dynamic component.
  late FlutterFlowDynamicModels<ExtradscompModel> extradscompModels;

  @override
  void initState(BuildContext context) {
    adminpanellModel = createModel(context, () => AdminpanellModel());
    extradscompModels = FlutterFlowDynamicModels(() => ExtradscompModel());
  }

  @override
  void dispose() {
    adminpanellModel.dispose();
    extradscompModels.dispose();
  }
}
