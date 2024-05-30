import 'package:dio/dio.dart';
import 'package:flutter_application_first_project/core/domain/model/singup_model.dart';
import 'package:flutter_application_first_project/core/resourses/URL.dart';

abstract class signUpService extends BaseUrl {
  postData(signupModel user);
}

class signUpServiceImpl extends signUpService {
  @override
  postData(signupModel user) async {
    Response response = await dio.post("${BaseUrl.baseUrl}/auth/register",
        data: user.toMap(),);
         return response;
  }
}
