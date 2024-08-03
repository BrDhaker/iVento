import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'event_creation_widget.dart' show EventCreationWidget;
import 'package:flutter/material.dart';

class EventCreationModel extends FlutterFlowModel<EventCreationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for eventName widget.
  FocusNode? eventNameFocusNode;
  TextEditingController? eventNameTextController;
  String? Function(BuildContext, String?)? eventNameTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? createdEvent;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    eventNameFocusNode?.dispose();
    eventNameTextController?.dispose();
  }
}
