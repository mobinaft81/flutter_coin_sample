import 'package:dio/dio.dart';
import 'package:flutter_mvvm_sample/model/crypto.dart';
import 'package:flutter_mvvm_sample/service/api/network_api.dart';

class WebApi implements NetworkApi {
  @override
  Future<List<Crypto>> getAllCryptos() async {
    print("در حال دریافت لیست رمز ارزها...");
    var response = await Dio().get(
        'https://rest.coincap.io/v3/assets?apiKey=830e1e3f1551c5973c5ab4bae04cac91aa1e2050c92a5e40a2d368bc767c77a5');

    List<Crypto> cryptoList = response.data['data']
        .map<Crypto>((jsonMapObject) => Crypto.fromMapJson(jsonMapObject))
        .toList();
    return cryptoList;
  }
}
