import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/display_received_data_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'check_connection_model.dart';
export 'check_connection_model.dart';

class CheckConnectionWidget extends StatefulWidget {
  const CheckConnectionWidget({super.key});

  @override
  State<CheckConnectionWidget> createState() => _CheckConnectionWidgetState();
}

class _CheckConnectionWidgetState extends State<CheckConnectionWidget> {
  late CheckConnectionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckConnectionModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.getConnonnectedDevicesOutput = await actions.getConnectedDevices();
      _model.connectedDevices =
          _model.getConnonnectedDevicesOutput!.toList().cast<BTDeviceStruct>();
      setState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFF0B8FAC),
          automaticallyImplyLeading: false,
          title: Text(
            'Home',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Montserrat',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(50.0, 20.0, 50.0, 16.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      _model.isBtenabled = await actions.isBluetoothEnabled();

                      context.pushNamed(
                        'deviceConnectPage',
                        queryParameters: {
                          'isBTEnabled': serializeParam(
                            _model.isBtenabled,
                            ParamType.bool,
                          ),
                        }.withoutNulls,
                      );

                      setState(() {});
                    },
                    text: 'Add Device',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFF0B8FAC),
                      textStyle:
                          FlutterFlowTheme.of(context).displayMedium.override(
                                fontFamily: 'Roboto Mono',
                                color: FlutterFlowTheme.of(context).alternate,
                                letterSpacing: 0.0,
                              ),
                      elevation: 5.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                      hoverBorderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    width: 416.0,
                    height: 265.0,
                    decoration: BoxDecoration(
                      color: _model.connectedDevices.isNotEmpty
                          ? FlutterFlowTheme.of(context).secondary
                          : FlutterFlowTheme.of(context).error,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0),
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        _model.connectedDevices.isNotEmpty
                            ? 'ventoline avec  toi'
                            : 'ventoline perdu',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Montserrat',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    width: 416.0,
                    height: 265.0,
                    decoration: BoxDecoration(
                      color: _model.connectedDevices.isNotEmpty
                          ? FlutterFlowTheme.of(context).secondary
                          : FlutterFlowTheme.of(context).error,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0),
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: wrapWithModel(
                        model: _model.displayReceivedDataModel,
                        updateCallback: () => setState(() {}),
                        child: const DisplayReceivedDataWidget(),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  elevation: 10.0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Container(
                    width: 494.0,
                    height: 203.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF67B9CB),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    child: Text(
                      'Take control of your asthma',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Noto Sans JP',
                            fontSize: 24.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
