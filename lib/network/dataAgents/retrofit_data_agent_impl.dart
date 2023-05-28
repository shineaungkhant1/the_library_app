import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:the_library_app/network/dataAgents/book_data_agent.dart';

import '../../data/vos/google_book_vo.dart';
import '../google_api.dart';


class RetrofitDataAgentImpl extends BookDataAgent{

  late GoogleApi mGoogleApi;

  static final RetrofitDataAgentImpl _singleton =
  RetrofitDataAgentImpl._internal();

  factory RetrofitDataAgentImpl() {
    return _singleton;
  }

  RetrofitDataAgentImpl._internal() {
    final dio = Dio();
    final interceptor = LogInterceptor(
      requestHeader: false, // don't log request headers
      requestBody: true, // don't log request body
      responseHeader: false, // don't log response headers
      responseBody: true, // log response body only
      logPrint: (message) => debugPrint(message.toString()), // use debugPrint for logging
    );
    dio.interceptors.add(interceptor);

    mGoogleApi = GoogleApi(dio);
  }


  @override
  Future<List<GoogleBookVO>?> getGoogleBooksList(String searchQuery) {
    return mGoogleApi
        .getGoogleBooksList(searchQuery)
        .asStream().map((event) => event.items).first;
  }


}