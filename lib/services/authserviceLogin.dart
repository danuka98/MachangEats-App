import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthServiceLogin{
  Dio dio = new Dio();

  login(email,password)async{
    try{
      return await dio.post('http://localhost:4000/api/v1/user/signin',data: {
        "email":email,
        "password":password
      },options: Options(contentType: Headers.formUrlEncodedContentType)
      );
    }
    on DioError catch(e){
      Fluttertoast.showToast(
        msg: e.response!.data['msg'],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.orange,
        textColor: Colors.white,
        fontSize: 16.0

      );
    }
  }
}
