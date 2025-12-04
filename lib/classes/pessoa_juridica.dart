import 'package:meu_app_orientacao_a_objetos_dart/classes/pessoa_abstract.dart';
import 'package:meu_app_orientacao_a_objetos_dart/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  void setCpf(String cnpj) {
    _cnpj = cnpj;
  }

  String getCpf() {
    return _cnpj;
  }

  PessoaJuridica(
    String nome,
    String endereco,
    String cnpj, {
    TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum,
  }) : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }

  @override
  String toString() {
    return {
      "Tipo": "PJ",
      "Nome:": super.getNome(),
      "Endereço:": super.getEndereco(),
      "CNPJ:": _cnpj,
      "TipoNotificacao": getTipoNotificacao(),
    }.toString();
  }
}
