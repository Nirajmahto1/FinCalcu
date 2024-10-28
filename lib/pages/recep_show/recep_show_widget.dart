import '/auth/supabase_auth/auth_util.dart';
import '/components/receptionist_show_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'recep_show_model.dart';
export 'recep_show_model.dart';

class RecepShowWidget extends StatefulWidget {
  /// create a page for showing list of data getting from firebase and after
  /// clicking on name of the reference it will expand then it will show all the
  /// details in whitish grey tone theme
  const RecepShowWidget({super.key});

  @override
  State<RecepShowWidget> createState() => _RecepShowWidgetState();
}

class _RecepShowWidgetState extends State<RecepShowWidget> {
  late RecepShowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecepShowModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF5F5F5),
        floatingActionButton: Align(
          alignment: const AlignmentDirectional(1.0, 1.0),
          child: FloatingActionButton(
            onPressed: () async {
              GoRouter.of(context).prepareAuthEvent();
              await authManager.signOut();
              GoRouter.of(context).clearRedirectLocation();

              context.goNamedAuth('Login', context.mounted);
            },
            backgroundColor: FlutterFlowTheme.of(context).tertiary,
            elevation: 25.0,
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Icon(
                Icons.login_outlined,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30.0,
              ),
            ),
          ),
        ),
        body: wrapWithModel(
          model: _model.receptionistShowModel,
          updateCallback: () => safeSetState(() {}),
          child: const ReceptionistShowWidget(),
        ),
      ),
    );
  }
}
