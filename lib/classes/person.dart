import 'package:dart_app/enum/notification_type.dart';

abstract class Person {
  String _name = "";
  String _age = "";
  String _email = "";
  String _phone = "";
  double? height;
  double? weight;
  NotificationType _notificationType = NotificationType.none;

  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  void setAge(String age) {
    _age = age;
  }

  String getAge() {
    return _age;
  }

  void setEmail(String email) {
    _email = email;
  }

  String getEmail() {
    return _email;
  }

  void setPhone(String phone) {
    _phone = phone;
  }

  String getPhone() {
    return _phone;
  }

  void setNotificationType(NotificationType notificationType) {
    _notificationType = notificationType;
  }

  NotificationType getNotificationType() {
    return _notificationType;
  }

  Person(String name, String age, String email, String phone,
      {NotificationType notificationType = NotificationType.none}) {
    _name = name;
    _age = age;
    _email = email;
    _phone = phone;
    _notificationType = notificationType;
  }

  void setWeight(double weight) {
    this.weight = weight;
  }

  void setHeight(double height) {
    this.height = height;
  }

  @override
  String toString() {
    return {
      "Name: ": _name,
      "Age: ": _age,
      "Email: ": _email,
      "Phone: ": _phone,
      "Notificação: ": _notificationType
    }.toString();
  }
}
