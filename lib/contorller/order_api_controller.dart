import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saman_project/api/api_settings.dart';
import 'package:http/http.dart' as http;
import 'package:saman_project/getx/address_getx_controller.dart';
import 'package:saman_project/preference/user_prefernce.dart';
import 'package:saman_project/utils/constans.dart';
class OrderApiController{

  Future<bool> addOrder() async{
    var url = Uri.parse(ApiSettings.ORDERS);
    var response = await http.post(url, body: {
      "payment_type" : "cash",
      "address_id" : AddressGetxController.to.addresses.last!.id.toString(),
    },
        headers: {
          "X-Requested-With" : "XMLHttpRequest",
          HttpHeaders.authorizationHeader : UserPreferences().getToken(),
        }
    );
    print(response.statusCode);
    if(response.statusCode == 200){
      Get.snackbar("نجاح", "تم تسجيل طلبك بنجاح", backgroundColor: kPrimaryColor);
      return true;
    }else{
      Get.snackbar("خطأ", jsonDecode(response.body)['message'], backgroundColor: Colors.red);

      return false;
    }
  }

}