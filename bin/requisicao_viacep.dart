import 'package:requisicao_viacep/controller/endereco_controller.dart';
import 'package:requisicao_viacep/repositories/endereco_repository.dart';
import 'package:requisicao_viacep/services/http_packege.dart';

void main(List<String> arguments) async {
  final buscaCep = EnderecoController(
    repository: EnderecoRepository(
      client: HttpPackege(),
    ),
  );

  buscaCep.getEndereco(cep: 21032025);
}
