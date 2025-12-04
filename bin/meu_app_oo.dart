import 'package:meu_app_orientacao_a_objetos_dart/classes/pessoa_fisica.dart';
import 'package:meu_app_orientacao_a_objetos_dart/classes/pessoa_juridica.dart';
import 'package:meu_app_orientacao_a_objetos_dart/enum/tipo_notificacao.dart';
import 'package:meu_app_orientacao_a_objetos_dart/service/enviar_notificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica = PessoaFisica(
    "Lucas",
    "Rua 2",
    "123456478-9",
    tipoNotificacao: TipoNotificacao.sms,
  );
  print(pessoaFisica);

  var pessoaJuridica = PessoaJuridica(
    "Empresa",
    "Rua 3",
    "9876543210",
    tipoNotificacao: TipoNotificacao.email,
  );
  print(pessoaJuridica);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaFisica);
  enviarNotificacao.notificar(pessoaJuridica);
}
