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

  @override
  String toString() {
    return '''cep: $cep:
    logradouro: $logradouro
    complemento: $complemento
    bairro: $bairro
    localidade: $localidade
    UF: $uf
    IBGE: $ibge
    gia: $gia
    ddd: $ddd
    siafi: $siafi''';
  }
}
