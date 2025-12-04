import 'package:meu_app_orientacao_a_objetos_dart/classes/pessoa_abstract.dart';
import 'package:meu_app_orientacao_a_objetos_dart/service/notificacao_interface.dart';

class NotificacaoPushNotification implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviar PUSH para: ${pessoa.getNome()}");
  }
}
