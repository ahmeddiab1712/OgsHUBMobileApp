import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class OgsLoginCall {
  static Future<ApiCallResponse> call({
    String? mobile = '',
    String? password = '',
    String? accountType = '',
  }) async {
    final ffApiRequestBody = '''
{
  "mobile": "$mobile",
  "password": "$password",
  "account_type": "$accountType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ogsLogin',
      apiUrl: 'https://ogs.mubarmijonline.com/login_mobile?postman',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
}

class OgsCreateParentAccountCall {
  static Future<ApiCallResponse> call({
    String? parentMobileCreate = '',
    String? parentPasswordCreate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "parent_mobile_create": "$parentMobileCreate",
  "parent_password_create": "$parentPasswordCreate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ogsCreateParentAccount',
      apiUrl: 'https://ogs.mubarmijonline.com/create_parent_account?postman',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
  static int? waCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.wa_code''',
      ));
}

class OgsConfirmWAcodeCall {
  static Future<ApiCallResponse> call({
    String? mobile = '',
    String? waCode = '',
    String? accountType = '',
  }) async {
    final ffApiRequestBody = '''
{
  "mobile": "$mobile",
  "wa_code": "$waCode",
  "account_type": "$accountType"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ogsConfirmWAcode',
      apiUrl: 'https://ogs.mubarmijonline.com/confirm_wa_code?postman',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
  static int? waCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.wa_code''',
      ));
}

class OgsForgotPasswordCall {
  static Future<ApiCallResponse> call({
    String? mobile = '',
  }) async {
    final ffApiRequestBody = '''
{
  "mobile": "$mobile"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ogsForgotPassword',
      apiUrl: 'https://ogs.mubarmijonline.com/forgot_password_mobile?postman',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
}

class OgsRegisteredClassesCall {
  static Future<ApiCallResponse> call({
    int? studentId,
  }) async {
    final ffApiRequestBody = '''
{
  "student_id": $studentId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ogsRegisteredClasses',
      apiUrl: 'https://ogs.mubarmijonline.com/mobile_registered_class?postman',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
}

class OgsOpenedRegisterationCall {
  static Future<ApiCallResponse> call({
    String? educationalSystem = '',
    String? search = '',
    int? studentId,
  }) async {
    final ffApiRequestBody = '''
{
  "educational_system": "$educationalSystem",
  "search": "$search",
  "student_id": $studentId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ogsOpenedRegisteration',
      apiUrl:
          'https://ogs.mubarmijonline.com/mobile_open_registeration?postman',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
  static List<int>? regClassID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].class_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? regDrName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].dr_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regSubject(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].subject''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regBudget(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].budget''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? regCountStudent(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].count_student''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? regEduSystem(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].educational_system''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regDate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regDrMobile(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].dr_mobile''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regNameSubject(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name_subject''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regPerValue(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].per_value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regCenterShare(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].center_share''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regInstructorShare(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].instractor_share''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regAddedBy(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].added_by''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regTime(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regPaymentType(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].payment_type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? regClassGroup(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].no_groups''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? regInstructorName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].instructor_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? regInstructorID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].instructor_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? regDetails(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].details''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? regDisappear(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].disappear''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? regCode(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? regAppear(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].appear''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? regData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class OgsChooseStudentCall {
  static Future<ApiCallResponse> call({
    String? parentMobile = '',
  }) async {
    final ffApiRequestBody = '''
{
  "parent_mobile": "$parentMobile"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ogsChooseStudent',
      apiUrl: 'https://ogs.mubarmijonline.com/choose_parent_students?postman',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
  static List<int>? regClassID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].class_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? regDrName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].dr_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regSubject(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].subject''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regBudget(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].budget''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? regCountStudent(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].count_student''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? regEduSystem(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].educational_system''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regDate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regDrMobile(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].dr_mobile''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regNameSubject(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].name_subject''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regPerValue(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].per_value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regCenterShare(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].center_share''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regInstructorShare(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].instractor_share''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regAddedBy(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].added_by''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regTime(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? regPaymentType(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].payment_type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? regClassGroup(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].no_groups''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? regInstructorName(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].instructor_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? regInstructorID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].instructor_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? regDetails(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].details''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? regDisappear(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].disappear''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? regCode(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? regAppear(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].appear''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? regData(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
}

class OgsRecentAttendanceCall {
  static Future<ApiCallResponse> call({
    int? studentId,
  }) async {
    final ffApiRequestBody = '''
{
  "student_id": $studentId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ogsRecentAttendance',
      apiUrl:
          'https://ogs.mubarmijonline.com/mobile_recent_attendent_class?postman',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
}

class OgsAttendanceCall {
  static Future<ApiCallResponse> call({
    int? studentId,
    int? classId,
  }) async {
    final ffApiRequestBody = '''
{
  "student_id": $studentId,
  "class_id": $classId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ogsAttendance',
      apiUrl: 'https://ogs.mubarmijonline.com/mobile_attendance?postman',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
}

class OgsCreateStudentCall {
  static Future<ApiCallResponse> call({
    String? studentName = '',
    String? studentMobile = '',
    String? parentMobile = '',
    String? studentEmail = '',
    String? password = '',
    String? schoolYear = '',
    String? schoolName = '',
    String? educationalSystem = '',
  }) async {
    final ffApiRequestBody = '''
{
  "student_name": "$studentName",
  "student_mobile": "$studentMobile",
  "parent_mobile": "$parentMobile",
  "student_email": "$studentEmail",
  "school_name": "$schoolName",
  "school_year": "$schoolYear",
  "educational_system": "$educationalSystem",
  "password": "$password",
  "code": "51"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ogsCreateStudent',
      apiUrl: 'https://ogs.mubarmijonline.com/create_student_mobile?postman',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
  static int? studentid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.student_id''',
      ));
}

class OgsWalletBalanceCall {
  static Future<ApiCallResponse> call({
    int? studentId,
    int? classId,
  }) async {
    final ffApiRequestBody = '''
{
  "student_id": $studentId,
  "class_id": $classId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ogsWalletBalance',
      apiUrl: 'https://ogs.mubarmijonline.com/mobile_wallet_balance?postman',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OgsWalletTransactionsCall {
  static Future<ApiCallResponse> call({
    int? studentId,
    int? classId,
  }) async {
    final ffApiRequestBody = '''
{
  "student_id": $studentId,
  "class_id": $classId
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ogsWalletTransactions',
      apiUrl:
          'https://ogs.mubarmijonline.com/mobile_wallet_transactions?postman',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OgsWhatsAppCall {
  static Future<ApiCallResponse> call({
    String? phoneNumber = '',
    String? message = '',
  }) async {
    final ffApiRequestBody = '''
{
  "chatId": "2$phoneNumber@c.us",
  "message": "$message"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ogsWhatsApp',
      apiUrl:
          'https://waapi.app/api/v1/instances/28923/client/action/send-message',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer Tz6pPqpclpDc8l6sDb406a1B4v7FaPwh2ovCucQFb334b504',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? waMessageStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.status''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
