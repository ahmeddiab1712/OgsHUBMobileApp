import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'whatsapp_confirm_widget.dart' show WhatsappConfirmWidget;
import 'package:flutter/material.dart';

class WhatsappConfirmModel extends FlutterFlowModel<WhatsappConfirmWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for wa_code widget.
  FocusNode? waCodeFocusNode;
  TextEditingController? waCodeTextController;
  String? Function(BuildContext, String?)? waCodeTextControllerValidator;
  // Stores action output result for [Backend Call - API (ogsConfirmWAcode)] action in Button widget.
  ApiCallResponse? apiResultakx;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    waCodeFocusNode?.dispose();
    waCodeTextController?.dispose();
  }
}
