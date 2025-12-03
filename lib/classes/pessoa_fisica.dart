import 'package:meu_app_orientacao_a_objetos_dart/classes/pessoa_abstract.dart';
import 'package:meu_app_orientacao_a_objetos_dart/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {
  String _cfp = "";

  void setCpf(String cpf) {
    _cfp = cpf;
  }

  String getCpf() {
    return _cfp;
  }

  PessoaFisica(
    String nome,
    String endereco,
    String cpf,
    TipoNotificacao tipoNotificacao,
  ) : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cfp = cpf;
  }

  @override
  String toString() {
    return {
      "Tipo": "PF",
      "Nome:": super.getNome(),
      "Endereço:": super.getEndereco(),
      "CPF:": _cfp,
      "TipoNotificacao": getTipoNotificacao(),
    }.toString();
  }
}
