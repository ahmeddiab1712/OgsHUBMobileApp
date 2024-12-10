import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'regestration_widget.dart' show RegestrationWidget;
import 'package:flutter/material.dart';

class RegestrationModel extends FlutterFlowModel<RegestrationWidget> {
  ///  Local state fields for this page.

  String search = 'EMPTY';

  List<dynamic> datJson = [];
  void addToDatJson(dynamic item) => datJson.add(item);
  void removeFromDatJson(dynamic item) => datJson.remove(item);
  void removeAtIndexFromDatJson(int index) => datJson.removeAt(index);
  void insertAtIndexInDatJson(int index, dynamic item) =>
      datJson.insert(index, item);
  void updateDatJsonAtIndex(int index, Function(dynamic) updateFn) =>
      datJson[index] = updateFn(datJson[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
