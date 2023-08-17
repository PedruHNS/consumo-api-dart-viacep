import '../repositories/endereco_repository.dart';

void main(List<String> arguments) async {
  final repository = EnderecoRepository();

  try {
    final cep = await repository.getCep(83750000);

    print(cep);
  } catch (e) {
    print('cep invalido ');
  }
}
