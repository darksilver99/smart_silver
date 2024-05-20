import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? baseURL = 'https://smart.silver-api.com',
    String? username = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${username}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${baseURL}/api/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TestdataCall {
  static Future<ApiCallResponse> call({
    String? baseURL = 'https://smart.silver-api.com',
    String? token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VybmFtZSI6ImRhcmtzaWx2ZXIwMEBob3RtYWlsLmNvbSIsImlhdCI6MTcxNTk0MzU0NCwiZXhwIjoxNzE1OTQ3MTQ0fQ.wYSOERHQsEOMNpddNNUu9CMxVeM26emoaxrri6Q9OUo',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'testdata',
      apiUrl: '${baseURL}/api/test_data',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateuserCall {
  static Future<ApiCallResponse> call({
    String? baseURL = 'https://smart.silver-api.com',
    String? username = '',
    String? password = '',
    String? firstName = '',
    String? lastName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${username}",
  "password": "${password}",
  "first_name": "${firstName}",
  "last_name": "${lastName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createuser',
      apiUrl: '${baseURL}/api/create_user',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class JoincompanyCall {
  static Future<ApiCallResponse> call({
    String? baseURL = 'https://smart.silver-api.com',
    String? authorization = '',
    String? uid = '',
    String? companyId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "uid": "${uid}",
  "company_id": "${companyId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'joincompany',
      apiUrl: '${baseURL}/api/join_company',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreatecompanyCall {
  static Future<ApiCallResponse> call({
    String? baseURL = 'https://smart.silver-api.com',
    String? authorization = '',
    String? uid = '',
    String? companyName = '',
    FFUploadedFile? images,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'createcompany',
      apiUrl: '${baseURL}/api/create_company',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${authorization}',
      },
      params: {
        'uid': uid,
        'company_name': companyName,
        'images[]': images,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
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
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
