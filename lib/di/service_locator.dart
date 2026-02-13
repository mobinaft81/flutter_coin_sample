import 'package:flutter_mvvm_sample/service/api/network_api.dart';
import 'package:flutter_mvvm_sample/service/api/web_api_implementation.dart';
import 'package:flutter_mvvm_sample/view_model/coinlist_viwmodel.dart';
import 'package:get_it/get_it.dart';

void initServiceLocator() {
  GetIt.I.registerSingleton<NetworkApi>(WebApi());
  //GetIt.I.registerSingleton<NetworkApi>(WebApiFake());

  GetIt.I.registerFactory<CoinlistViwModel>(() => CoinlistViwModel());
}
