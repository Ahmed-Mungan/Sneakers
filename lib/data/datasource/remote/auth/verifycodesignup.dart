import 'package:sneakers/core/class/crud.dart';
import 'package:sneakers/linkapi.dart';

class VerifyCodeSignUpData {
  Crud crud;
  VerifyCodeSignUpData(this.crud);
  postdata(String email ,String verifycode ) async {
    var response = await crud.postData(AppLink.verfiycodesignip , { 
       "email" : email , 
      "verifycode" : verifycode  , 

    });
    return response.fold((l) => l, (r) => r);
  }
}