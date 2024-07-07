// import 'package:cubit_weather/src/core/constants/app/string_constants.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
//
// @immutable
// final class DioManager {
//   static DioManager? _instance;
//   static DioManager get instance {
//     if (_instance != null) return _instance!;
//     _instance = DioManager._init();
//     return _instance!;
//   }
//
//   late final Dio dio;
//
//   DioManager._init() {
//     dio = Dio(
//       BaseOptions(
//         baseUrl: StringConstants.baseUrl,
//         followRedirects: true,
//         receiveDataWhenStatusError: true,
//       ),
//     );
//   }
// }
