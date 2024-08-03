import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/display_received_data_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'check_connection_widget.dart' show CheckConnectionWidget;
import 'package:flutter/material.dart';

class CheckConnectionModel extends FlutterFlowModel<CheckConnectionWidget> {
  ///  Local state fields for this page.

  List<BTDeviceStruct> connectedDevices = [];
  void addToConnectedDevices(BTDeviceStruct item) => connectedDevices.add(item);
  void removeFromConnectedDevices(BTDeviceStruct item) =>
      connectedDevices.remove(item);
  void removeAtIndexFromConnectedDevices(int index) =>
      connectedDevices.removeAt(index);
  void insertAtIndexInConnectedDevices(int index, BTDeviceStruct item) =>
      connectedDevices.insert(index, item);
  void updateConnectedDevicesAtIndex(
          int index, Function(BTDeviceStruct) updateFn) =>
      connectedDevices[index] = updateFn(connectedDevices[index]);

  String? receivedText;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getConnectedDevices] action in checkConnection widget.
  List<BTDeviceStruct>? getConnonnectedDevicesOutput;
  // Stores action output result for [Custom Action - isBluetoothEnabled] action in loginButton widget.
  bool? isBtenabled;
  // Model for DisplayReceivedData component.
  late DisplayReceivedDataModel displayReceivedDataModel;

  @override
  void initState(BuildContext context) {
    displayReceivedDataModel =
        createModel(context, () => DisplayReceivedDataModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    displayReceivedDataModel.dispose();
  }
}
