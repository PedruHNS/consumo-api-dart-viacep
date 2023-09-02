// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:requisicao_viacep/adapters/requisicao_viacep.dart';
import 'package:requisicao_viacep/services/http_client_interface.dart';

import '../models/endereco.dart';

class EnderecoRepository {
  final IHttpClient client;

  EnderecoRepository({required this.client});

  Future<Endereco> getCep(int cep) async {
    final response = await client.get(
      url: 'https://viacep.com.br/ws/$cep/json/',
    );

    return EnderecoAdapter.fromJson(response.body);
  }
}
