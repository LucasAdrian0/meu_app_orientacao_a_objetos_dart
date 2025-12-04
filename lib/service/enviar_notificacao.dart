import 'package:meu_app_orientacao_a_objetos_dart/classes/pessoa_abstract.dart';
import 'package:meu_app_orientacao_a_objetos_dart/enum/tipo_notificacao.dart';
import 'package:meu_app_orientacao_a_objetos_dart/service/impl/notificacao_email.dart';
import 'package:meu_app_orientacao_a_objetos_dart/service/impl/notificacao_push_notification.dart';
import 'package:meu_app_orientacao_a_objetos_dart/service/impl/notificacao_sms.dart';
import 'package:meu_app_orientacao_a_objetos_dart/service/notificacao_interface.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.email:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.push:
        notificacao = NotificacaoPushNotification();
        break;
      case TipoNotificacao.sms:
        notificacao = NotificacaoSms();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    } else {
      print("Pessoa sem tipo de notificação");
    }
  }
}
