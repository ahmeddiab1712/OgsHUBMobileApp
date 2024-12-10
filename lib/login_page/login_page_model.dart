import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for mobile widget.
  FocusNode? mobileFocusNode;
  TextEditingController? mobileTextController;
  String? Function(BuildContext, String?)? mobileTextControllerValidator;
  String? _mobileTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter Mobile';
    }

    if (val.length > 16) {
      return 'Maximum 16 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('[0-9]+').hasMatch(val)) {
      return 'Numbers Only';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter Password';
    }

    if (val.length < 8) {
      return 'Password is at least 8 characters';
    }
    if (val.length > 64) {
      return 'Maximum 64 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for account_type_login widget.
  String? accountTypeLoginValue;
  FormFieldController<String>? accountTypeLoginValueController;
  // Stores action output result for [Backend Call - API (ogsLogin)] action in Button widget.
  ApiCallResponse? loginApiFeedback;
  // Stores action output result for [Backend Call - API (ogsForgotPassword)] action in Button widget.
  ApiCallResponse? forgotPassResult;
  // State field(s) for student_name_create widget.
  FocusNode? studentNameCreateFocusNode;
  TextEditingController? studentNameCreateTextController;
  String? Function(BuildContext, String?)?
      studentNameCreateTextControllerValidator;
  String? _studentNameCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Required!';
    }

    return null;
  }

  // State field(s) for student_mobile_create widget.
  FocusNode? studentMobileCreateFocusNode;
  TextEditingController? studentMobileCreateTextController;
  String? Function(BuildContext, String?)?
      studentMobileCreateTextControllerValidator;
  String? _studentMobileCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Required';
    }

    if (!RegExp('[0-9]+').hasMatch(val)) {
      return 'Numbers Only';
    }
    return null;
  }

  // State field(s) for student_password_Create widget.
  FocusNode? studentPasswordCreateFocusNode;
  TextEditingController? studentPasswordCreateTextController;
  late bool studentPasswordCreateVisibility;
  String? Function(BuildContext, String?)?
      studentPasswordCreateTextControllerValidator;
  String? _studentPasswordCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Can\'t be less than 8 Chars';
    }

    return null;
  }

  // State field(s) for student_password_confir_Create widget.
  FocusNode? studentPasswordConfirCreateFocusNode;
  TextEditingController? studentPasswordConfirCreateTextController;
  late bool studentPasswordConfirCreateVisibility;
  String? Function(BuildContext, String?)?
      studentPasswordConfirCreateTextControllerValidator;
  // State field(s) for parent_mobile_create widget.
  FocusNode? parentMobileCreateFocusNode1;
  TextEditingController? parentMobileCreateTextController1;
  String? Function(BuildContext, String?)?
      parentMobileCreateTextController1Validator;
  String? _parentMobileCreateTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Required!';
    }

    if (!RegExp('[0-9]+').hasMatch(val)) {
      return 'Numbers Only';
    }
    return null;
  }

  // State field(s) for student_email_create widget.
  FocusNode? studentEmailCreateFocusNode;
  TextEditingController? studentEmailCreateTextController;
  String? Function(BuildContext, String?)?
      studentEmailCreateTextControllerValidator;
  String? _studentEmailCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Required!';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for educational_system_create widget.
  String? educationalSystemCreateValue;
  FormFieldController<String>? educationalSystemCreateValueController;
  // State field(s) for school_name_create widget.
  FocusNode? schoolNameCreateFocusNode;
  TextEditingController? schoolNameCreateTextController;
  String? Function(BuildContext, String?)?
      schoolNameCreateTextControllerValidator;
  String? _schoolNameCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Required!';
    }

    return null;
  }

  // State field(s) for year_create widget.
  FocusNode? yearCreateFocusNode;
  TextEditingController? yearCreateTextController;
  String? Function(BuildContext, String?)? yearCreateTextControllerValidator;
  String? _yearCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Required!';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (ogsCreateStudent)] action in Button widget.
  ApiCallResponse? createStudentApiResult;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? accountExistFB;
  // State field(s) for parent_mobile_create widget.
  FocusNode? parentMobileCreateFocusNode2;
  TextEditingController? parentMobileCreateTextController2;
  String? Function(BuildContext, String?)?
      parentMobileCreateTextController2Validator;
  String? _parentMobileCreateTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter Mobile';
    }

    if (val.length > 16) {
      return 'Maximum 16 characters allowed, currently ${val.length}.';
    }
    if (!RegExp('[0-9]+').hasMatch(val)) {
      return 'Numbers Only';
    }
    return null;
  }

  // State field(s) for parent_password_create widget.
  FocusNode? parentPasswordCreateFocusNode;
  TextEditingController? parentPasswordCreateTextController;
  late bool parentPasswordCreateVisibility;
  String? Function(BuildContext, String?)?
      parentPasswordCreateTextControllerValidator;
  String? _parentPasswordCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter Password';
    }

    if (val.length < 8) {
      return 'Password is at least 8 characters';
    }
    if (val.length > 64) {
      return 'Maximum 64 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (ogsCreateParentAccount)] action in parent_Button_create widget.
  ApiCallResponse? parentCreateResult;

  @override
  void initState(BuildContext context) {
    mobileTextControllerValidator = _mobileTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    studentNameCreateTextControllerValidator =
        _studentNameCreateTextControllerValidator;
    studentMobileCreateTextControllerValidator =
        _studentMobileCreateTextControllerValidator;
    studentPasswordCreateVisibility = false;
    studentPasswordCreateTextControllerValidator =
        _studentPasswordCreateTextControllerValidator;
    studentPasswordConfirCreateVisibility = false;
    parentMobileCreateTextController1Validator =
        _parentMobileCreateTextController1Validator;
    studentEmailCreateTextControllerValidator =
        _studentEmailCreateTextControllerValidator;
    schoolNameCreateTextControllerValidator =
        _schoolNameCreateTextControllerValidator;
    yearCreateTextControllerValidator = _yearCreateTextControllerValidator;
    parentMobileCreateTextController2Validator =
        _parentMobileCreateTextController2Validator;
    parentPasswordCreateVisibility = false;
    parentPasswordCreateTextControllerValidator =
        _parentPasswordCreateTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    mobileFocusNode?.dispose();
    mobileTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    studentNameCreateFocusNode?.dispose();
    studentNameCreateTextController?.dispose();

    studentMobileCreateFocusNode?.dispose();
    studentMobileCreateTextController?.dispose();

    studentPasswordCreateFocusNode?.dispose();
    studentPasswordCreateTextController?.dispose();

    studentPasswordConfirCreateFocusNode?.dispose();
    studentPasswordConfirCreateTextController?.dispose();

    parentMobileCreateFocusNode1?.dispose();
    parentMobileCreateTextController1?.dispose();

    studentEmailCreateFocusNode?.dispose();
    studentEmailCreateTextController?.dispose();

    schoolNameCreateFocusNode?.dispose();
    schoolNameCreateTextController?.dispose();

    yearCreateFocusNode?.dispose();
    yearCreateTextController?.dispose();

    parentMobileCreateFocusNode2?.dispose();
    parentMobileCreateTextController2?.dispose();

    parentPasswordCreateFocusNode?.dispose();
    parentPasswordCreateTextController?.dispose();
  }
}
