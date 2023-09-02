// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:requisicao_viacep/repositories/endereco_repository.dart';

class EnderecoController {
  final EnderecoRepository repository;

  EnderecoController({required this.repository});

  Future<void> getEndereco({required int cep}) async {
    try {
      final endereco = await repository.getCep(cep);
      print(endereco);
    } catch (e) {
      print('cep invalido ');
    }
  }
}
