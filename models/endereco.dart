// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Endereco {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ibge;
  final String gia;
  final String ddd;
  final String siafi;

  Endereco({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ibge,
    required this.gia,
    required this.ddd,
    required this.siafi,
  });

  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'ibge': ibge,
      'gia': gia,
      'ddd': ddd,
      'siafi': siafi,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Endereco.fromMap(Map<String, dynamic> map) {
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

  factory Endereco.fromJson(String json) => Endereco.fromMap(jsonDecode(json));

  @override
  String toString() {
    return ''' 
    cep: $cep 
       logradouro: $logradouro 
       complemento: $complemento 
       bairro: $bairro 
       localidade: $localidade 
       uf: $uf
       ibge: $ibge 
       gia: $gia 
       ddd: $ddd 
       siafi: $siafi
    ''';
  }
}
