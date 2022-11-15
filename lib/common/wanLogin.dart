import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/WanUser.dart';

class Wanandroid{

  Future<WanUser> login(String userName, String pwd) async{
    Dio dio = Dio();

    dio.options..baseUrl = 'https://www.wanandroid.com/';

    // 添加拦截器
    dio.interceptors
      ..add(LogInterceptor(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ));

    // 发起请求
    Response response = await dio.post('user/login',
        data: FormData.fromMap({
          "username": userName,
          "password": pwd,
        }));

    // if (response.statusCode == 200) {
    //   WanUser user = WanUser.fromJson(response.data);
    //   return user;
    // }
    WanUser user = WanUser.fromJson(response.data);
    return user;

  }

}
