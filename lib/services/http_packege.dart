import 'package:http/http.dart';
import 'package:requisicao_viacep/services/http_client_interface.dart';

class HttpPackege implements IHttpClient {
  final client = Client();

  @override
  Future<dynamic> get({required String url}) async {
    return await client.get(Uri.parse(url));
  }
}
