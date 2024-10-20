import '/components/quote_form_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'form_widget.dart' show FormWidget;
import 'package:flutter/material.dart';

class FormModel extends FlutterFlowModel<FormWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Quote_form component.
  late QuoteFormModel quoteFormModel;

  @override
  void initState(BuildContext context) {
    quoteFormModel = createModel(context, () => QuoteFormModel());
  }

  @override
  void dispose() {
    quoteFormModel.dispose();
  }
}
