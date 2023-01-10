import 'dart:convert';

import 'package:GALIF_924/domain/Adress.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class AddressApi {
  findAddressByCep(String cep) async {
    Uri url = Uri.http("viacep.com.br", "/ws/$cep/json/");

    Response response = await http.get(url);
    Map<String, dynamic> json = jsonDecode(response.body);

    print(response.statusCode);
    print(response.body);

    // Status code != 200
    if(json["erro"] != null){
      return Address();
    }

    // Status code == 200
    Address address = Address.fromJson(json);
    return address;
  }
}