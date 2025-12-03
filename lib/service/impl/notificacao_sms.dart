import 'package:meu_app_orientacao_a_objetos_dart/classes/pessoa_abstract.dart';
import 'package:meu_app_orientacao_a_objetos_dart/service/notificacao_interface.dart';

class NotificacaoSms implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviar SMS para: ${pessoa.getNome()}");
  }
}
