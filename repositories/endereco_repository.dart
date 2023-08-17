import 'package:http/http.dart' as http;
import '../models/endereco.dart';

class EnderecoRepository {
  Future<Endereco> getCep(int cep) async {
    final response =
        await http.get(Uri.parse("https://viacep.com.br/ws/$cep/json/"));

    return Endereco.fromJson(response.body);
  }
}
