import 'package:dart_app/classes/person.dart';
import 'package:dart_app/services/notification_interface.dart';

class NotificationEmail implements NotificationInterface {
  @override
  void sendNotification(Person person) {
    print(
        "Notification by email sent to ${person.getName()} - ${person.getEmail()}");
  }
}
