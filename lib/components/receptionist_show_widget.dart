import '/backend/backend.dart';
import '/components/adminpanell_widget.dart';
import '/components/extradscomp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'receptionist_show_model.dart';
export 'receptionist_show_model.dart';

class ReceptionistShowWidget extends StatefulWidget {
  const ReceptionistShowWidget({super.key});

  @override
  State<ReceptionistShowWidget> createState() => _ReceptionistShowWidgetState();
}

class _ReceptionistShowWidgetState extends State<ReceptionistShowWidget>
    with TickerProviderStateMixin {
  late ReceptionistShowModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReceptionistShowModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(-400.0, 0.0),
          ),
        ],
      ),
      'containerOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(400.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
      primary: false,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Container(
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 50.0,
                          decoration: const BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'FinCalc',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                      if (valueOrDefault<bool>(
                        FFAppState().role == 'admin',
                        false,
                      ))
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: wrapWithModel(
                            model: _model.adminpanellModel,
                            updateCallback: () => safeSetState(() {}),
                            child: const AdminpanellWidget(),
                          ),
                        ),
                      Text(
                        'Our Plans',
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Inter Tight',
                                  color: const Color(0xFF333333),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Text(
                        'Place a Booking Request to get Final Price and Details.',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              color: const Color(0xFF666666),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                      StreamBuilder<List<PricesDataRecord>>(
                        stream: queryPricesDataRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 30.0,
                                height: 30.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<PricesDataRecord> listViewPricesDataRecordList =
                              snapshot.data!;

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewPricesDataRecordList.length,
                            separatorBuilder: (_, __) => const SizedBox(height: 16.0),
                            itemBuilder: (context, listViewIndex) {
                              final listViewPricesDataRecord =
                                  listViewPricesDataRecordList[listViewIndex];
                              return Material(
                                color: Colors.transparent,
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineSmall
                                                  .override(
                                                    fontFamily: 'Inter Tight',
                                                    color: const Color(0xFF333333),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  const Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                listViewPricesDataRecord
                                                    .reference.id,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 1.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0xFFE0E0E0),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Price :',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            const Color(0xFF666666),
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  listViewPricesDataRecord.price
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            const Color(0xFF333333),
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Discount % :',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            const Color(0xFF666666),
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  listViewPricesDataRecord
                                                      .discount
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            const Color(0xFF333333),
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Your Discount % :',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: const Color(
                                                                0xFF666666),
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .extradscompModels
                                                        .getModel(
                                                      listViewPricesDataRecord
                                                          .reference.id,
                                                      listViewIndex,
                                                    ),
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    updateOnChange: true,
                                                    child: ExtradscompWidget(
                                                      key: Key(
                                                        'Keyi4j_${listViewPricesDataRecord.reference.id}',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Final Price :',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            const Color(0xFF666666),
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  formatNumber(
                                                    listViewPricesDataRecord
                                                            .price
                                                            .toDouble() -
                                                        (((listViewPricesDataRecord
                                                                        .discount +
                                                                    valueOrDefault<
                                                                        double>(
                                                                      double.tryParse(_model
                                                                              .extradscompModels
                                                                              .getValueForKey(
                                                                            listViewPricesDataRecord.reference.id,
                                                                            (m) =>
                                                                                m.textController.text,
                                                                          ) ??
                                                                          ''),
                                                                      0.0,
                                                                    )) /
                                                                100) *
                                                            listViewPricesDataRecord
                                                                .price
                                                                .toDouble()),
                                                    formatType:
                                                        FormatType.decimal,
                                                    decimalType: DecimalType
                                                        .periodDecimal,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            const Color(0xFF333333),
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed:
                                                    !listViewPricesDataRecord
                                                            .active
                                                        ? null
                                                        : () async {
                                                            if (animationsMap[
                                                                    'containerOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              await animationsMap[
                                                                      'containerOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0);
                                                            }

                                                            context.pushNamed(
                                                              'form',
                                                              queryParameters: {
                                                                'name':
                                                                    serializeParam(
                                                                  listViewPricesDataRecord
                                                                      .reference
                                                                      .id,
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'recep':
                                                                    serializeParam(
                                                                  1,
                                                                  ParamType.int,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .rightToLeft,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          900),
                                                                ),
                                                              },
                                                            );
                                                          },
                                                text: listViewPricesDataRecord
                                                        .active
                                                    ? 'Request a Quote'
                                                    : 'Booking not available',
                                                options: FFButtonOptions(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          1.0,
                                                  height: 50.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: const Color(0xFF444444),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Inter Tight',
                                                            color: Colors.white,
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                  elevation: 8.0,
                                                  borderSide: const BorderSide(
                                                    color: Color(0xFF555555),
                                                    width: 3.0,
                                                  ),
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(100.0),
                                                    bottomRight:
                                                        Radius.circular(100.0),
                                                    topLeft:
                                                        Radius.circular(100.0),
                                                    topRight:
                                                        Radius.circular(100.0),
                                                  ),
                                                  disabledColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  disabledTextColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                ),
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 8.0)),
                                        ),
                                      ].divide(const SizedBox(height: 8.0)),
                                    ),
                                  ),
                                ),
                              ).animateOnActionTrigger(
                                animationsMap[
                                    'containerOnActionTriggerAnimation2']!,
                              );
                            },
                          );
                        },
                      ),
                    ]
                        .divide(const SizedBox(height: 24.0))
                        .around(const SizedBox(height: 24.0)),
                  ),
                ),
              ),
            ).animateOnActionTrigger(
              animationsMap['containerOnActionTriggerAnimation1']!,
            ),
          ),
        ],
      ),
    );
  }
}
