import 'package:dio/dio.dart';

BaseOptions options = new BaseOptions(
  baseUrl: "http://10.0.2.2:8000/api",
  connectTimeout: 5000,
  receiveTimeout: 3000,
);
Dio dio = new Dio(options);
