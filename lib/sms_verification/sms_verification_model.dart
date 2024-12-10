import '/flutter_flow/flutter_flow_util.dart';
import 'sms_verification_widget.dart' show SmsVerificationWidget;
import 'package:flutter/material.dart';

class SmsVerificationModel extends FlutterFlowModel<SmsVerificationWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for wa_code widget.
  FocusNode? waCodeFocusNode;
  TextEditingController? waCodeTextController;
  String? Function(BuildContext, String?)? waCodeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    waCodeFocusNode?.dispose();
    waCodeTextController?.dispose();
  }
}
