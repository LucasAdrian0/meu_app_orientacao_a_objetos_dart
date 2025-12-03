import 'package:meu_app_orientacao_a_objetos_dart/classes/pessoa_fisica.dart';
import 'package:meu_app_orientacao_a_objetos_dart/classes/pessoa_juridica.dart';
import 'package:meu_app_orientacao_a_objetos_dart/enum/tipo_notificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica = PessoaFisica(
    "Lucas",
    "Rua 2",
    "123456478-9",
    TipoNotificacao.email,
  );
  print(pessoaFisica);

  var pessoaJuridica = PessoaJuridica(
    "Empresa",
    "Rua 3",
    "9876543210",
    TipoNotificacao.sms,
  );
  print(pessoaJuridica);
}
