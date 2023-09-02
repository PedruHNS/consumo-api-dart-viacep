import 'dart:convert';

import '../models/endereco.dart';

class EnderecoAdapter {
  static Map<String, dynamic> toMap(Endereco endereco) {
    return <String, dynamic>{
      'cep': endereco.cep,
      'logradouro': endereco.logradouro,
      'complemento': endereco.complemento,
      'bairro': endereco.bairro,
      'localidade': endereco.localidade,
      'uf': endereco.uf,
      'ibge': endereco.ibge,
      'gia': endereco.gia,
      'ddd': endereco.ddd,
      'siafi': endereco.siafi,
    };
  }

  String toJson(Endereco endereco) => jsonEncode(toMap(endereco));

  static Endereco fromMap(Map<String, dynamic> map) {
    return Endereco(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      complemento: map['complemento'] ?? '',
      bairro: map['bairro'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
      ibge: map['ibge'] ?? '',
      gia: map['gia'] ?? '',
      ddd: map['ddd'] ?? '',
      siafi: map['siafi'] ?? '',
    );
  }

  static Endereco fromJson(String json) => fromMap(jsonDecode(json));
}
