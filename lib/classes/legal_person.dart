import 'package:dart_app/classes/person.dart';
import 'package:dart_app/enum/notification_type.dart';

class LegalPerson extends Person {
  String _cpf = "";

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  LegalPerson(String name, String age, String cpf, String email, String phone,
      {NotificationType notificationType = NotificationType.none})
      : super(name, age, email, phone, notificationType: notificationType) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "Tipo": "PF",
      "Name": super.getName(),
      "Notificação": getNotificationType(),
      "Age": super.getAge(),
      "CPF": _cpf
    }.toString();
  }
}
