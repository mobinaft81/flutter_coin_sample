import 'package:flutter_mvvm_sample/model/crypto.dart';

abstract class NetworkApi {
  Future<List<Crypto>> getAllCryptos();
}
