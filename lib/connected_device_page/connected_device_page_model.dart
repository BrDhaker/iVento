import '/components/display_received_data_widget.dart';
import '/components/strength_indicator_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'connected_device_page_widget.dart' show ConnectedDevicePageWidget;
import 'package:flutter/material.dart';

class ConnectedDevicePageModel
    extends FlutterFlowModel<ConnectedDevicePageWidget> {
  ///  Local state fields for this page.

  int? currentRssi;

  String? receivedValue;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? rssiUpdateTimer;
  // Stores action output result for [Custom Action - getRssi] action in connectedDevicePage widget.
  int? updatedRssi;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for DisplayReceivedData component.
  late DisplayReceivedDataModel displayReceivedDataModel;
  // Model for StrengthIndicator component.
  late StrengthIndicatorModel strengthIndicatorModel;

  @override
  void initState(BuildContext context) {
    displayReceivedDataModel =
        createModel(context, () => DisplayReceivedDataModel());
    strengthIndicatorModel =
        createModel(context, () => StrengthIndicatorModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    rssiUpdateTimer?.cancel();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    displayReceivedDataModel.dispose();
    strengthIndicatorModel.dispose();
  }
}
